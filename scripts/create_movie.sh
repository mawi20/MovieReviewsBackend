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
      "title": "'"${TEXT}"'",
      "description": "'"${TEXT}"'",
      "length":"'"${INTEGER}"'",
      "rating":"'"${INTEGER}"'"
    }
    }'
  # '{
  #   "movie": {
  #     "title": "'"Superman"'",
  #     "description": "'"uses a cape"'",
  #     "length":"'"2 hours"'",
  #     "rating":"'"4"'"
  #   }
  # }'
  # '{
  #   "movie": {
  #     "title": "'"Batman"'",
  #     "description": "'"uses a bat"'",
  #     "length":"'"2.5 hours"'",
  #     "rating":"'"4"'"
  #   }
  # }'
  # '{
  #   "movie": {
  #     "title": "'"Entourage"'",
  #     "description": "'"Hollywood and Entertainment"'",
  #     "length":"'"2 hours"'",
  #     "rating":"'"5"'"
  #   }
  # }'

echo
