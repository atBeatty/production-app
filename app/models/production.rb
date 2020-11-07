class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  belongs_to :client
end
