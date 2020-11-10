class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  belongs_to :client, optional: true
  # scope :significant_contracts
  


  def self.significant_contracts
    where ("contract > 40000")
  end

end
