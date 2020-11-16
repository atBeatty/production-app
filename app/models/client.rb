class Client < ApplicationRecord
    has_many :productions, dependent: :destroy
    has_many :producers, through: :productions

    validates :name, presence: true

    def self.alphabetical
        Client.order(:name)
    end

    def self.total_productions
        
        
        
    end
    
    
    
end
