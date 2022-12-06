class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :image_url
  has_many :books
end
