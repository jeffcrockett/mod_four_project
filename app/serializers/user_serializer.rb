class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :img_url
  has_many :picks
end
