#!/usr/bin/env bash
# Register this source on explore.alt.store (requires fediUsername in PALSource.json).
# See: https://faq.altstore.io/developers/rest-api#federate-source

set -euo pipefail

SOURCE_URL="${1:-https://nc-research-dev.github.io/handy-globe-altstore/PALSource.json}"

curl --fail-with-body -sS \
  --header "Content-Type: application/json" \
  -X POST \
  --data "{\"source\": \"${SOURCE_URL}\"}" \
  https://api.altstore.io/federate

echo
