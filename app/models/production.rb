class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  belongs_to :client, optional: true
  # scope :significant_contracts
  


  def self.significant_contracts
    where ("contract > 40000")
  end

  def client_name=(name)
    #client exist?
      #client.productions << production
    #if not
      #create client
      #production.client = created client
    client = Client.find_by_id(self.client.id)

    if client
      client.update(name: name)
    else
      client = Client.create(name: name)
      self.client = client
      
    end
    # client = Client.find_by(name: name)
    # self.client_id = client.id

  end

  def client_name
  #   self.client.name ||= ""
    self.client.name
  end




  

end
