class Pick < ApplicationRecord
    belongs_to :user
    has_many :user_picks
    has_many :users, through: :user_picks
end
