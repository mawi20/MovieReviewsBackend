class Movie < ApplicationRecord
  has_many :review_movies
  belongs_to :user
end
