class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  belongs_to :client, optional: true
  # scope :significant_contracts
  


  def self.significant_contracts
    where ("contract > 40000")
  end

  def client_name=(name)
    client = Client.find_by_id(self.client.id)
    if client
      client.update(name: name)
    else
      client = Client.create(name: name)
      self.client = client
    end
  end

  def client_name
    if self.client
      self.client.name
    else
      ""
    end
  end




  

end
