# frozen_string_literal: true

Rails.application.routes.draw do


  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  # patch '/review_movies/:id' => 'review_movies#update'
  # delete '/review_movies/:id' => 'review_movies#destroy'
  # get '/review_movie' => 'review_movies#index'
  # get '/review_movies/:id' => 'review_movies#show'
  # post '/review_movies/' => 'review_movies#create'

  resources :movies, except: %i[new edit]
  resources :users, only: %i[new edit]
  resources :review_movies, except: %i[new edit]
  resources :examples, except: %i[new edit]
end
