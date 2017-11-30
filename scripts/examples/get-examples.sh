#!/bin/bash

API="${API_ORIGIN:-https://mawimovie.herokuapp.com/}"
URL_PATH="/review_movies"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
