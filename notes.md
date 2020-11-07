Owner
has_many :productions

Production
belongs_to :owner
belongs_to :producer
belongs_to :client

Producer
has_many :productions
has_many :clients

Client
has_many :productions
has_many :producers, through: :productions

###

Production
title
contract
producer_id
client_id

Producer
name
rate

Client
name
contact
contact_info

Owner
name
email
password_digest

###

User Story
Owner signs in to access company app of managing all production shoots



