# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
Client.create(name: Faker::Company.name, contact: Faker::Name.name, contact_email: Faker::Internet.email)
end

5.times do
Producer.create(name: Faker::Name.name, rate: rand(500..800))
end

User.create(name: "Adam Beatty", email: "adam.b@yahoo.com", password: "password")

20.times do 
    Production.create(title: ["Cool Photo Shoot", "Awesome Campaign Event"].sample, contract: rand(15000..25000), producer_id: rand(1..5), client_id: rand(1..5), user_id: 1)
end
