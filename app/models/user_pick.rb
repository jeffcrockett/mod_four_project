class UserPick < ApplicationRecord
    belongs_to :user 
    belongs_to :pick
end
