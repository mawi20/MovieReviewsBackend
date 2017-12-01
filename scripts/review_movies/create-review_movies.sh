#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/review_movies"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review_movies": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
