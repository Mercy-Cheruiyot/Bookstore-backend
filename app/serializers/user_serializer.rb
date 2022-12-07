class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname, :image, :email, :password_digest
end
