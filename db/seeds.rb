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
Booking.destroy_all
User.destroy_all
puts "Database cleaned"

puts 'Creating 3 users...'
gaetan = User.create!(
  email: "gaetan@example.com",
  password: "password",
  name: "Gaetan Renault"
)
quentin = User.create!(
  email: "quentin@example.com",
  password: "password",
  name: "Quentin Orhant"
)
guillaume = User.create!(
  email: "guillaume@example.com",
  password: "password",
  name: "Guillaume Messieux"
)
puts "Users created"

puts 'Creating 6 fake planets...'

neptune = Planet.new(
  name: neptune,
  localisation: "x = 10px y = 20px",
  capacity: 10,
  description: "Neptune est la huitième planète par ordre d'éloignement au Soleil
  et la plus éloignée connue du Système solaire. Elle orbite autour du Soleil à
  une distance d'environ 30,1 au, avec une excentricité orbitale moitié moindre
  que celle de la Terre et une période de révolution de 164,79 ans.",
  price_per_millenia: 20,
  rating: 5,
  owner: guillaume
)
neptune.save!

saturne = Planet.new(
  name: saturne,
  localisation: "x = 40px y = 80px",
  capacity: 25,
  description: "Saturne est la sixième planète du Système solaire par ordre
  d'éloignement au Soleil, et la deuxième plus grande par la taille et la masse
  après Jupiter, qui est comme elle une planète géante gazeuse",
  price_per_millenia: 35,
  rating: 4,
  owner: guillaume
)
# saturne.image.attach(file: ...)
saturne.save!

jupiter = Planet.new(
  name: jupiter,
  localisation: "x = 60px y = 120px",
  capacity: 45,
  description: "Jupiter est la cinquième planète du Système solaire par ordre
  d'éloignement au Soleil, et la plus grande par la taille et la masse devant
  Saturne, qui est comme elle une planète géante gazeuse.",
  price_per_millenia: 20,
  rating: 3.5,
  owner: guillaume
)
jupiter.save!

mars = Planet.new(
  name: mars,
  localisation: "x = 100px y = 80px",
  capacity: 25,
  description: "Mars est la quatrième planète du Système solaire par ordre
  croissant de la distance au Soleil et la deuxième par ordre croissant de la
  taille et de la masse. Son éloignement au Soleil est compris entre 1,381 et
  1,666 UA, avec une période orbitale de 669,58 jours martiens.",
  price_per_millenia: 25,
  rating: 4.5,
  owner: guillaume
)
mars.save!

pluton = Planet.new(
  name: pluton,
  localisation: "x = 60px y = 120px",
  capacity: 5,
  description: "Pluton, officiellement désignée par Pluton, est une planète
  naine, la plus volumineuse connue dans le Système solaire, et la deuxième
  en ce qui concerne sa masse. Pluton est ainsi le neuvième plus gros objet
  connu orbitant directement autour du Soleil et le dixième par la masse. ",
  price_per_millenia: 10,
  rating: 3.5,
  owner: quentin
)
pluton.save!

mercure = Planet.new(
  name: mercure,
  localisation: "x = 160px y = 120px",
  capacity: 5,
  description: "Le mercure est l'élément chimique de numéro atomique 80, de
  symbole Hg. Le corps simple mercure est un métal, liquide et peu visqueux
  dans les conditions normales de température et de pression. On l'a appelé
  vif-argent jusqu'au début du XIXᵉ siècle. ",
  price_per_millenia: 35,
  rating: 3.5,
  owner: quentin
)
mercure.save!
puts 'Planets created'

puts 'Creating 5 fake bookings...'

booking_1 = Booking.new(
  departure_date: 2023,
  arrival_date: 3023,
  status: "pending",
  total_price: 20,
  user: gaetan,
  planet: neptune
)
booking_1.save!

booking_2 = Booking.new(
  departure_date: 3023,
  arrival_date: 4023,
  status: "accepted",
  total_price: 20,
  user: gaetan,
  planet: saturne
)
booking_2.save!

booking_3 = Booking.new(
  departure_date: 3023,
  arrival_date: 4023,
  status: "declined",
  total_price: 20,
  user: quentin,
  planet: saturne
)
booking_3.save!
puts 'Bookings created'





# create_table "bookings", force: :cascade do |t|
#   t.integer "departure_date"
#   t.integer "arrival_date"
#   t.string "validate", default: "unvalidate"
#   t.integer "total_price"
#   t.big
