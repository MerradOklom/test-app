#!/usr/bin/env bash
set -e

JWT=$(curl -s \
  -H "Authorization: Bearer ${HF_TOKEN}" \
  "https://huggingface.co/api/spaces/${SPACE_USER}/${SPACE_NAME}/jwt" \
  | jq -r '.token')

echo -n "$JWT"
