#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "movie": {
      "title": "'"Thor"'",
      "description": "'"uses a hammer"'",
      "length":"'"2 hours"'",
      "rating":"'"5"'"
    }
  }'

echo
