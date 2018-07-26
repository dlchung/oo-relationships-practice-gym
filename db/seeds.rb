# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Location.destroy_all
Trainer.destroy_all
Client.destroy_all
LocationTrainer.destroy_all

13.times do
  Trainer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(18..40))
end

5.times do
  Location.create(name: Faker::Address.community, city: Faker::Address.city, state: Faker::Address.state)
end

75.times do
  Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, trainer_id: Trainer.all.sample.id)
end

Trainer.all.each do |trainer|
  LocationTrainer.create(trainer_id: trainer.id, location_id: Location.all.sample.id)
end

puts "Seeding done."
