# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]

  # patch '/movies/:id' => 'movies#update'
  delete '/movies/:id' => 'movies#destroy'
  get '/movies/' => 'movies#index'
  get '/movies/:id' => 'movies#show'
  post '/movies/' => 'movies#create'

  resources :movies
  # resources :review_movies, except: %i[new edit]
  # resources :users, only: %i[new edit]
  # resources :movies, only: %i[index show destroy update create]
  resources :examples, except: %i[new edit]
end
