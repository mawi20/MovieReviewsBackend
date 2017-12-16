# frozen_string_literal: true
#
# class ReviewMoviesController < ApplicationController
#   before_action :set_review_movie, only: %i[show update destroy]
#
#   # GET /review_movies
#   def index
#     @review_movies = ReviewMovie.all
#
#     render json: @review_movies
#   end
#
#   # GET /review_movies/1
#   def show
#     render json: @review_movie
#   end
#
#   # POST /review_movies
#   def create
#     @review_movie = ReviewMovie.new(review_movie_params)
#
#     if @review_movie.save
#       render json: @review_movie, status: :created, location: @review_movie
#     else
#       render json: @review_movie.errors, status: :unprocessable_entity
#     end
#   end
#
#   # PATCH/PUT /review_movies/1
#   def update
#     if @review_movie.update(review_movie_params)
#       render json: @review_movie
#     else
#       render json: @review_movie.errors, status: :unprocessable_entity
#     end
#   end
#
#   # DELETE /review_movies/1
#   def destroy
#     @review_movie.destroy
#   end
#
#   private
#
#   # Use callbacks to share common setup or constraints between actions.
#   def set_review_movie
#     @review_movie = ReviewMovie.find(params[:id])
#   end
#
#   # Only allow a trusted parameter "white list" through.
#   def review_movie_params
#     params.require(:review_movie).permit(:rating, :movie_id, :user_id)
#   end
# end
