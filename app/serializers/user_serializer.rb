class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname, :image_url, :email, :password_digest
end
