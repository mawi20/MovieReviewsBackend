class AddMovieToReviewMovies < ActiveRecord::Migration[5.1]
  def change
    add_reference :movies, :review_movie, foreign_key: true
  end
end
