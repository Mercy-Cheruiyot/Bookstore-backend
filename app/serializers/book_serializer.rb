class BookSerializer < ActiveModel::Serializer
  attributes :id, :username, :title, :author, :publication_year, :user_id, :genre
  has_one :user
  has_one :author
end
