#!/usr/bin/env bash

set -e

# When run from workspace root (e.g. cursor-agentic-coding), use it for .env; else script dir's repo root
ROOT_DIR="${WORKSPACE_ROOT:-$(pwd)}"
if [ -f "${ROOT_DIR}/.env" ]; then
  # shellcheck disable=SC1091
  source "${ROOT_DIR}/.env"
fi

JIRA_BASE_URL="https://motel-one.atlassian.net"
EMAIL="dogan.teke-ext@motel-one.com"
API_TOKEN="${JIRA_API_KEY}"

ISSUE_KEY="$1"

if [ -z "$ISSUE_KEY" ]; then
  echo "Usage: $0 <ISSUE_KEY>"
  echo "Example: $0 MOP-123"
  exit 1
fi

if [ -z "$API_TOKEN" ]; then
  echo "Missing JIRA_API_KEY in environment or .env"
  exit 1
fi

# Note: Custom fields are for "Story" and "Acceptance Criteria"
curl -X GET \
  -H "Accept: application/json" \
  -u "${EMAIL}:${API_TOKEN}" \
  "${JIRA_BASE_URL}/rest/api/3/issue/${ISSUE_KEY}?fields=summary,description,customfield_10069,customfield_10070"
