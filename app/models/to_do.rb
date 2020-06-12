class ToDo < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :body, presence: true
    validates :importance, presence: true
    
end
