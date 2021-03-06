class Production < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  belongs_to :client#, optional: true
  validates :title, presence: true
  validates :contract, presence: true
  validates :client_id, presence: true
  scope :significant_contracts, -> {where("contract > ?", 40000)}
  scope :highest_contract, -> {maximum("contract")}



  def client_name=(name)
    #Find or create by
    client = Client.find_by(name: name)
    if client
      self.client_id = client.id
    else
      client = Client.create(name: name)
      self.client_id = client.id
    end
  end

  def client_name
    #Short circuiting
    # self.client ? self.client.name : nil
    self.client && self.client.name
  end

  def status
    if self.start_date && self.end_date
      return "Contract Closed"
    end
    
  end


  






  

end
