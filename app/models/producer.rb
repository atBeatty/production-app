class Producer < ApplicationRecord
    has_many :productions
    has_many :clients, through: :productions

end
