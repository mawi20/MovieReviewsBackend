#!/bin/bash

curl --include --request POST "http://localhost:4741/review_movies/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
      "review_movies": {
        "first_name": "'"${FIRST}"'",
        "last_name": "'"${LAST}"'",
        "born_on": "'"${BORN}"'",
        "diagnosis": "'"${DIAGNOSIS}"'"
      }
  }'
