class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pick_id, :content
  belongs_to :pick 
  belongs_to :user
end
