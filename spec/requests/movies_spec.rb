# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Movies API' do
  def movie_params
    {
      title: 'title',
      description: 'description',
      length: 'length',
      rating: 'rating'
    }
  end

  def movies
    Movie.all
  end

  def movie
    Movie.first
  end

  before(:all) do
    Movie.create!(movie_params)
  end

  after(:all) do
    Movie.delete_all
  end

  describe 'GET /movies' do
    it 'gets all movies' do
      get '/movies'

      expect(response).to be_success

      movies_response = JSON.parse(response.body)
      expect(movies_response.length).to eq(movies.count)
      expect(movies_response.first['title']).to eq(movie['title'])
    end
  end

  describe 'GET /movies/:id' do
    let 'show one movie' do
      get "/movies/#{movie.id}"
      expect(response).to be_success
      movie_response = JSON.parse(response.body)
      expect(movie_response['id']).not_to be_nil
      expect(movie_response['title']).to eq(movie_params[:title])
    end
  end

  describe 'DELETE /movies/:id' do
    let 'deletes a movie' do
    end
  end

  describe 'PATCH /movies/:id' do
    def movie_diff
      {
        title: 'title',
        description: 'description',
        length: 'length',
        rating: 'rating'
      }
    end

    let 'updates a movie' do
      patch "/movies/#{movie.id}", params: { movie: movie_diff }
      expect(response).to be_success
      expect(response.body).to be_empty
      expect(movie[:title]).to eq(movie_diff[:title])
    end
  end

  describe 'POST /movies' do
    def new_movie
      {
        title: 'title',
        description: 'description',
        length: 'length',
        rating: 'rating'
      }
    end
    it 'creates a movie' do
      post '/movies/', params: { new_movie: new_movie }

      expect(response).to be_success

      movie_response = JSON.parse(response.body)
      expect(movie_response['id']).not_to be_nil
      expect(movie_response['title']).to eq(new_movie[:title])
    end
  end
end
