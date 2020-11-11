class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  belongs_to :client, optional: true
  # scope :significant_contracts
  


  def self.significant_contracts
    where ("contract > 40000")
  end

  def client_name=(name)
    client = Client.find_or_create_by(name: name)
    self.client_id = client.id

  end

  def client_name
    self.client
  end



  

end
