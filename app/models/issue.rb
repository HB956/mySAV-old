class Issue < ApplicationRecord
    
    validates :state, presence: true
    validates :order, presence: true
end
