class PickSerializer < ActiveModel::Serializer
  attributes :id, :date, :restaurant_id, :restaurant_name, :user_id, :votes, :confirmed
  belongs_to :user
end
