class Client < ApplicationRecord
    has_many :productions, dependent: :destroy
    has_many :producers, through: :productions

    validates :name, presence: true

    
    
end
