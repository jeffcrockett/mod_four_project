class Pick < ApplicationRecord
    belongs_to :user
    has_many :user_picks
    has_many :comments
    has_many :users, through: :user_picks
    validates :date, uniqueness: {scope: :user, message: 'User can only make one pick per day'}
end
