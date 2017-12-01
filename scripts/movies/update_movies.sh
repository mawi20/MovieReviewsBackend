#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "movie": {
      "title": "'"batman"'",
      "description": "'"uses a bat"'",
      "length":"'"2 hours"'",
      "rating":"'"4"'"
    }
  }'

echo
