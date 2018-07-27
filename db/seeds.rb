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

15.times do
  Trainer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(18..40), bio: Faker::Hipster.paragraph(2, true, 4), avatar_url: Faker::Avatar.image)
end

13.times do
  Location.create(name: Faker::Address.community, city: Faker::Address.city, state: Faker::Address.state)
end

100.times do
  Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, trainer_id: Trainer.all.sample.id)
end

Trainer.all.each do |trainer|
  LocationTrainer.find_or_create_by(trainer_id: trainer.id, location_id: Location.all.sample.id)
  if rand(1..100) > 30
    LocationTrainer.find_or_create_by(trainer_id: trainer.id, location_id: Location.all.sample.id)
  end
  if rand(1..100) > 70
    LocationTrainer.find_or_create_by(trainer_id: trainer.id, location_id: Location.all.sample.id)
  end
end

puts "Seeding done."
