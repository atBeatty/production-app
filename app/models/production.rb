class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :owner
  belongs_to :client
end
