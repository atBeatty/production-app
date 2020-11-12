class Client < ApplicationRecord
    has_many :productions
    has_many :producers, through: :productions
    
    
end
