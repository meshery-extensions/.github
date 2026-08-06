#!/usr/bin/env bash
# Applies support-labels/manifest.yaml to:
#   1. the "support" custom property on every repo (org custom properties API)
#   2. a matching "support-official" / "support-community" topic (repo
#      topics API), for public, plan-tier-independent visibility
#
# Requires GH_TOKEN (fine-grained token or GitHub App installation token, see
# IMPLEMENTATION.md for why a token scoped to just this job is recommended)
# with:
#   - org "Custom properties" permission: write (custom_properties_org_values_editor)
#   - repo "Administration" permission: write, for topics, on both orgs
#
# Usage: apply-support-labels.sh <path-to-manifest.yaml>

set -euo pipefail

MANIFEST="${1:?usage: apply-support-labels.sh <manifest.yaml>}"
API_VERSION="2022-11-28"
: "${GH_TOKEN:?GH_TOKEN must be set}"

json="$(yq eval -o=json "$MANIFEST")"

api() {
  curl -sSL -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer ${GH_TOKEN}" \
    -H "X-GitHub-Api-Version: ${API_VERSION}" "$@"
}

set_topic() {
  local org="$1" repo="$2" label="$3" add current updated
  add="support-${label}"
  current=$(api "https://api.github.com/repos/${org}/${repo}/topics" | jq -c '.names')
  updated=$(echo "$current" | jq -c --arg add "$add" \
    '[.[] | select(startswith("support-") | not)] + [$add] | unique')
  api -X PUT "https://api.github.com/repos/${org}/${repo}/topics" \
    -d "{\"names\": ${updated}}" > /dev/null
  echo "  ${org}/${repo} topic -> ${add}"
}

apply_batch() {
  local org="$1" pairs="$2" label names total i chunk
  for label in official community; do
    names=$(echo "$pairs" | jq -c --arg l "$label" '[.[] | select(.label==$l) | .name]')
    total=$(echo "$names" | jq 'length')
    [ "$total" -eq 0 ] && continue

    echo "Setting support=${label} on ${total} repo(s) in ${org}"
    i=0
    while [ "$i" -lt "$total" ]; do
      chunk=$(echo "$names" | jq -c ".[$i:$((i+30))]")
      # The org properties/values endpoint accepts at most 30 repos per call.
      api -X PATCH "https://api.github.com/orgs/${org}/properties/values" \
        -d "{\"repository_names\": ${chunk}, \"properties\": [{\"property_name\": \"support\", \"value\": \"${label}\"}]}" \
        > /dev/null
      i=$((i+30))
    done

    echo "$names" | jq -r '.[]' | while read -r repo; do
      set_topic "$org" "$repo" "$label"
    done
  done
}

fetch_all_repo_names() {
  local org="$1" page=1 out="[]" batch n
  while true; do
    batch=$(api "https://api.github.com/orgs/${org}/repos?per_page=100&page=${page}&type=all")
    n=$(echo "$batch" | jq 'length')
    [ "$n" -eq 0 ] && break
    out=$(jq -c -n --argjson a "$out" --argjson b "$(echo "$batch" | jq -c '[.[].name]')" '$a + $b')
    page=$((page+1))
  done
  echo "$out"
}

# --- meshery-extensions: every repo labeled explicitly in the manifest -----
ext_pairs=$(echo "$json" | jq -c \
  '.organizations["meshery-extensions"].repos | map({name, label})')
apply_batch "meshery-extensions" "$ext_pairs"

# --- meshery: default_label applies to every repo not listed in overrides --
default_label=$(echo "$json" | jq -r '.organizations["meshery"].default_label')
overrides=$(echo "$json" | jq -c '.organizations["meshery"].overrides // []')
all_repos=$(fetch_all_repo_names "meshery")

core_pairs=$(jq -c -n \
  --argjson repos "$all_repos" \
  --argjson overrides "$overrides" \
  --arg default "$default_label" \
  '$repos | map(
      . as $r
      | ($overrides | map(select(.name == $r)) | first) as $o
      | { name: $r, label: (if $o then $o.label else $default end) }
    )')
apply_batch "meshery" "$core_pairs"

echo "Support labels applied."
