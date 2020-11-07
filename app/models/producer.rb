class Producer < ApplicationRecord
    has_many :productions
    has_many :clients, through: :productions

    accepts_nested_attributes_for :productions
end
