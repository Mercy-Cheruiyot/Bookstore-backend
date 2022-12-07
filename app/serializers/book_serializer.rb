class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_id, :publication_year, :user_id, :genre,:image
  has_one :user
  has_one :author
end
