#!/usr/bin/env bash
# One-time setup: define the "support" custom property on an org.
#
# Run once per organization by an org owner. Needs the org-level "Custom
# properties" permission at admin (custom_properties_org_definitions_manager),
# which is deliberately a different, more privileged token than the one used
# by apply-support-labels.sh day to day.
#
# Usage:
#   GH_TOKEN=<org-owner token> ./bootstrap-schema.sh meshery official
#   GH_TOKEN=<org-owner token> ./bootstrap-schema.sh meshery-extensions community
#   GH_TOKEN=<org-owner token> ./bootstrap-schema.sh meshery-extensions
#
# Passing a default value makes the property required, so every repo in the
# org always carries a value. Omitting it makes the property optional with
# no default; repos then start with no value at all.
#
# GitHub rejects "required with no default" (422: "Default value must be
# present"), so those two settings move together and cannot be mixed.
#
# Re-running is safe: PUT replaces the existing definition with these values.

set -euo pipefail

ORG="${1:?usage: bootstrap-schema.sh <org> [default_value]}"
DEFAULT_VALUE="${2:-}"
API_VERSION="2022-11-28"
: "${GH_TOKEN:?set GH_TOKEN to an org-owner token}"

# Max 255 characters, enforced by the API.
DESCRIPTION="Support level per GOVERNANCE.md. official: maintained by core or designated maintainers, with compatibility testing against supported core releases. community: maintained by community contributors, who set support and release cadence."

if [ ${#DESCRIPTION} -gt 255 ]; then
  echo "Description is ${#DESCRIPTION} chars; the API limit is 255." >&2
  exit 1
fi

if [ -n "$DEFAULT_VALUE" ]; then
  case "$DEFAULT_VALUE" in
    official|community) ;;
    *) echo "Default value must be 'official' or 'community', got '${DEFAULT_VALUE}'." >&2; exit 1 ;;
  esac
  BODY=$(jq -n --arg default_value "$DEFAULT_VALUE" --arg description "$DESCRIPTION" \
    '{
      value_type: "single_select",
      required: true,
      default_value: $default_value,
      description: $description,
      allowed_values: ["official", "community"],
      values_editable_by: "org_actors"
    }')
  echo "Setting 'support' on ${ORG}: required, default '${DEFAULT_VALUE}'"
else
  BODY=$(jq -n --arg description "$DESCRIPTION" \
    '{
      value_type: "single_select",
      required: false,
      description: $description,
      allowed_values: ["official", "community"],
      values_editable_by: "org_actors"
    }')
  echo "Setting 'support' on ${ORG}: optional, no default"
fi

response=$(mktemp)
trap 'rm -f "$response"' EXIT

status=$(curl -sSL -o "$response" -w '%{http_code}' -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GH_TOKEN}" \
  -H "X-GitHub-Api-Version: ${API_VERSION}" \
  "https://api.github.com/orgs/${ORG}/properties/schema/support" \
  -d "$BODY")

if [ "$status" -lt 200 ] || [ "$status" -ge 300 ]; then
  echo "Failed (HTTP ${status}):" >&2
  jq . < "$response" >&2 2>/dev/null || cat "$response" >&2
  exit 1
fi

jq . < "$response"
echo
echo "Done. Verify at https://github.com/organizations/${ORG}/settings/custom-properties"
