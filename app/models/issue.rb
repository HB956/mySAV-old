class Issue < ApplicationRecord
    belongs_to :user
    
    validates :state, presence: true
    validates :order, presence: true
end
