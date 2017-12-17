# frozen_string_literal: true

class AddUserToMovies < ActiveRecord::Migration[5.1]
  def change
    add_reference :movies, :user, foreign_key: true
  end
end
