#!/usr/bin/env bash
# Compares live "support" custom property values against
# support-labels/manifest.yaml for meshery-extensions, and files or updates
# a single tracking issue when they disagree. Intended to run on a schedule
# (see .github/workflows/audit-support-labels.yml).
#
# This covers meshery-extensions, where every repo needs an explicit label.
# The meshery org relies on a required default_value at the schema level
# (see bootstrap-schema.sh), so drift there would surface as a repo missing
# the property entirely; extend this script the same way if that org's
# repo count grows enough to want the same explicit audit trail.
#
# Requires GH_TOKEN with:
#   - org "Custom properties" permission: read (meshery-extensions)
#   - repo "Issues" permission: write (meshery-extensions/.github)
#
# Usage: audit-support-labels.sh <path-to-manifest.yaml>

set -euo pipefail

MANIFEST="${1:?usage: audit-support-labels.sh <manifest.yaml>}"
API_VERSION="2022-11-28"
ISSUE_REPO="meshery-extensions/.github"
ISSUE_TITLE="Support label drift"
: "${GH_TOKEN:?GH_TOKEN must be set}"

json="$(yq eval -o=json "$MANIFEST")"

api() {
  curl -sSL -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer ${GH_TOKEN}" \
    -H "X-GitHub-Api-Version: ${API_VERSION}" "$@"
}

expected=$(echo "$json" | jq -c \
  '.organizations["meshery-extensions"].repos | map({name, label}) | sort_by(.name)')

live=$(api "https://api.github.com/orgs/meshery-extensions/properties/values?per_page=100" | jq -c \
  '[.[] | {name: .repository_name, label: ((.properties[] | select(.property_name=="support") | .value) // null)}] | sort_by(.name)')

drift=$(jq -n --argjson expected "$expected" --argjson live "$live" '
  def by_name(a): a | map({(.name): .label}) | add // {};
  (by_name($expected)) as $e | (by_name($live)) as $l |
  [ ($e | keys[]) as $k
    | select($l[$k] != $e[$k])
    | { repo: $k, expected: $e[$k], actual: ($l[$k] // "unset") }
  ]
  + [ ($l | keys[]) as $k
      | select($e[$k] == null)
      | { repo: $k, expected: "not in manifest", actual: $l[$k] }
    ]
')

count=$(echo "$drift" | jq 'length')

if [ "$count" -eq 0 ]; then
  echo "No drift found."
  exit 0
fi

body="Automated check found ${count} repo(s) where the live \`support\` custom property does not match \`support-labels/manifest.yaml\`.

| Repo | Expected | Actual |
| --- | --- | --- |
$(echo "$drift" | jq -r '.[] | "| \(.repo) | \(.expected) | \(.actual) |"')

Update the repo's custom property to match the manifest, or update the manifest and re-run **Apply support labels** if the manifest is out of date."

existing=$(api "https://api.github.com/search/issues?q=repo:${ISSUE_REPO}+in:title+\"${ISSUE_TITLE}\"+state:open" | jq -r '.items[0].number // empty')

if [ -n "$existing" ]; then
  api -X PATCH "https://api.github.com/repos/${ISSUE_REPO}/issues/${existing}" \
    -d "$(jq -n --arg body "$body" '{body: $body}')" > /dev/null
  echo "Updated issue #${existing}"
else
  api -X POST "https://api.github.com/repos/${ISSUE_REPO}/issues" \
    -d "$(jq -n --arg title "$ISSUE_TITLE" --arg body "$body" --arg label "governance" \
      '{title: $title, body: $body, labels: [$label]}')" > /dev/null
  echo "Filed new drift issue"
fi
