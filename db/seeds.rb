# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'json'
require 'faker'

puts "Cleaning up database..."
User.destroy_all
Planet.destroy_all
puts "Database cleaned"

puts 'Creating 20 fake users...'
gaetan = User.create!(
  email: "gaetan@example.com",
  password: "password",
  name: "Gaetan Renault"
)
quentin = User.create!(
  email: "quentin@example.com",
  password: "password",
  name: "Gaetan Renault"
)
guillaume = User.create!(
  email: "guillaume@example.com",
  password: "password",
  name: "Gaetan Renault"
)
puts "Users created"

# adresse mail : user@example.com
# login : password

puts 'Creating 20 fake planets...'
20.times do
  planet = Planet.new(
    name:    Faker::Space.planet,
    localisation: Faker::Space.galaxy,
    capacity: rand(1..20)*1000000000,
    description: Faker::Books::Dune.quote,
    price_per_millenia: rand(1..20)*1000000,
    rating:  rand(0..5),
    owner: [guillaume, gaetan, quentin].sample
  )
  planet.save!
end
puts 'Planets created'






# create_table "bookings", force: :cascade do |t|
#   t.integer "departure_date"
#   t.integer "arrival_date"
#   t.string "validate", default: "unvalidate"
#   t.integer "total_price"
#   t.big
