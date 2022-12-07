class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :image
  has_many :books
end
