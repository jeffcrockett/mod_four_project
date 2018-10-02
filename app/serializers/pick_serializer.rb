class PickSerializer < ActiveModel::Serializer
  attributes :id, :date, :restaurant_id, :restaurant_name, :user_id, :votes, :confirmed, :voter_ids
  belongs_to :user
end
