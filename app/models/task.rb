class Task < ApplicationRecord
    belongs_to :user 
    validates :activity, presence: true 
end
