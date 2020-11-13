class Producer < ApplicationRecord
    has_many :productions
    has_many :clients, through: :productions

    validates :name, uniqueness: true

    # accepts_nested_attributes_for :productions
end
