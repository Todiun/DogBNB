# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
require 'faker'

# Reset
City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

# Cities
cities = 3.times.map do
  City.create(city_name: Faker::Address.city)
end

# Dogs
dogs = 10.times.map do
  Dog.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    city: cities.sample
  )
end

# Dogsitters
dogsisters = 5.times.map do
  Dogsitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: cities.sample
  )
end

# Strolls
20.times do
  Stroll.create(
    date: Faker::Time.between(from: DateTime.now - 15, to: DateTime.now),
    dogsitter: dogsisters.sample,
    dog: dogs.sample,
    city: cities.sample
  )
end

puts "Seed OK : #{City.count} cities, #{Dog.count} dogs, #{Dogsitter.count} dogsitters, #{Stroll.count} strolls"

