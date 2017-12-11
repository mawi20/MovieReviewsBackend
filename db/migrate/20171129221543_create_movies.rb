# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :length
      t.integer :rating
      t.references :user, foriegn_key: true

      t.timestamps
    end
  end
end
