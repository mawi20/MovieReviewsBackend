# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  def movie_params
    {
      title: 'title',
      description: 'description',
      length: 'length',
      rating: 'rating'
    }
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

  describe 'GET #index' do
    before(:each) { get :index }
    it 'is successful' do
      expect(response.status).to be_success
    end
    it 'renders a JSON response' do
      movies_collection = JSON.parse(response.body)
      expect(movies_collection).not_to be_nil
      expect(movies_collection.first['title']).to eq(movie['title'])
    end
  end

  describe 'GET #show' do
    before(:each) { get :show, params: { id: movie.id } }
    it 'is successful' do
      expect(response).to be_success
    end
    it 'renders a JSON response' do
      movie_response = JSON.parse(response.body)
      expect(movie_response).not_to be_nil
    end
  end

  describe 'POST #create' do
    before(:each) do
      post :create, params: { movie: movie_params }
    end
    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders a JSON response' do
      movie_response = JSON.parse(response.body)
      expect(movie_response).not_to be_nil
    end
  end

  describe 'PATCH update' do
    def movie_diff
    { title: 'title',
      description: 'description',
      length: 'length',
      rating: 'rating' }
    end

    before(:each) do
    patch :update, params: {
      id: movie.id,
      movie: movie_diff
    }
    end

    it 'is successful and returns an empty response' do
      expect(response.status).to eq(204)
      expect(response.body).to be_empty

      expect(movie[:title]).to eq(movie_diff[:title])
    end
  end

  describe 'DELETE #destroy' do
    it 'is successful and returns an empty response' do
    delete :destroy, params: { id: movie_id }

    expect(response).to be_successful
    expect(response.body).to be_empty
    end
  end
end
