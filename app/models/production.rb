class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  belongs_to :client, optional: true
  scope :significant_contracts, -> {where("contract > 50000")}
  


  def self.significant_contracts
    binding.pry
  end

end
