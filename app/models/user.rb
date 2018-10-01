class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :picks
    # has_many :user_picks
    # has_many :picks, through: :user_picks
end
