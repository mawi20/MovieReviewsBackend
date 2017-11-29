# frozen_string_literal: true

Rails.application.routes.draw do


  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  # patch '/patients/:id' => 'patients#update'
  # delete '/patients/:id' => 'patients#destroy'
  # get '/patients' => 'patients#index'
  # get '/patients/:id' => 'patients#show'
  # post '/patients/' => 'patients#create'

  resources :movies, except: %i[new edit]
  resources :users, only: %i[index show]
  resources :review_movies, except: %i[index show]
  resources :examples, except: %i[new edit]
  resources :movies, only: [:index, :show, :destroy, :update, :create]
end
