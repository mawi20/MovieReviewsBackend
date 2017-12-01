class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :length, :rating
end
