class PickSerializer < ActiveModel::Serializer
  attributes :id, :date, :restaurant_id, :user_id, :votes, :confirmed
end
