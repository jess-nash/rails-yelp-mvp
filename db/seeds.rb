require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating database...'
5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: ["Chinese", "Italian", "Japanese", "French", "Belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "restaurant #{restaurant.id} is created"
end

puts 'Done!'
