class ReviewMovieSerializer < ActiveModel::Serializer
  attributes :id, :rating, :movie_id, :user_id
end
