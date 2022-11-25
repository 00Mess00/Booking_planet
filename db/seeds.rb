# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'json'

puts "Cleaning up database..."
Booking.destroy_all
Planet.destroy_all
User.destroy_all
puts "Database cleaned"

puts 'Creating 3 users...'
gaetan = User.new(
  email: "gaetan@example.com",
  password: "password",
  name: "Gaetan Renault"
)
file = URI.open("https://res.cloudinary.com/dbxzydbfe/image/upload/v1669129984/BB13CBED-3EC2-49A4-B6B5-3D185549A390_x7rmdr.jpg")
gaetan.photo.attach(io: file, filename: "Gaetan.jpg", content_type: "image/jpg")
gaetan.save!

quentin = User.new(
  email: "quentin@example.com",
  password: "password",
  name: "Quentin Orhant"
)
file = URI.open("https://res.cloudinary.com/dbxzydbfe/image/upload/v1669129722/avatar_sakuoe.jpg")
quentin.photo.attach(io: file, filename: "Quentin.jpg", content_type: "image/jpg")
quentin.save!

guillaume = User.new(
  email: "guillaume@example.com",
  password: "password",
  name: "Guillaume Messieux"
)

dionysos = User.new(
  email: "dionysos@example.com",
  password: "password",
  name: "Dionysos"
)

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665432330/jjmpgh36k9njifsmq2ak.jpg")
guillaume.photo.attach(io: file, filename: "Guillaume.jpg", content_type: "image/jpg")
guillaume.save!

puts "Users created"

puts 'Creating 6 fake planets...'

neptune = Planet.new(
  name: "Neptune",
  address: "97387 Route de l'Espace, Kourou 97310",
  capacity: 10,
  description: "Neptune est la huitième planète par ordre d'éloignement au Soleil
  et la plus éloignée connue du Système solaire. Elle orbite autour du Soleil à
  une distance d'environ 30,1 au, avec une excentricité orbitale moitié moindre
  que celle de la Terre et une période de révolution de 164,79 ans.",
  price_per_millenia: 20,
  rating: 5,
  owner: guillaume
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/0/06/Neptune.jpg?20210312074035")
neptune.photo.attach(io: file, filename: "neptune.jpg", content_type: "image/jpg")
neptune.save!

saturne = Planet.new(
  name: "Saturne",
  address: "Cape Canaveral Space Force Station, Cape Canaveral, FL 32920, États-Unis",
  capacity: 25,
  description: "Saturne est la sixième planète du Système solaire par ordre
  d'éloignement au Soleil, et la deuxième plus grande par la taille et la masse
  après Jupiter, qui est comme elle une planète géante gazeuse",
  price_per_millenia: 35,
  rating: 4,
  owner: guillaume
)
# saturne.image.attach(file: ...)
file = URI.open("https://starwalk.space/gallery/images/saturn-planet-guide/1920x1080.jpg")
saturne.photo.attach(io: file, filename: "Saturne.jpg", content_type: "image/jpg")
saturne.save!

jupiter = Planet.new(
  name: "Jupiter",
  address: "Nairobi Central, Nairobi, Kenya",
  capacity: 45,
  description: "Jupiter est la cinquième planète du Système solaire par ordre
  d'éloignement au Soleil, et la plus grande par la taille et la masse devant
  Saturne, qui est comme elle une planète géante gazeuse.",
  price_per_millenia: 20,
  rating: 3.5,
  owner: guillaume
)
file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5fd7a3828fe56f1f5c4e1b86/wide_1300/image.jpg")
jupiter.photo.attach(io: file, filename: "Jupiter.jpg", content_type: "image/jpg")
jupiter.save!

mars = Planet.new(
  name: "Mars",
  address: "Chine, Inner Mongolia, Alxa League, Ejin Banner, 735412",
  capacity: 25,
  description: "Mars est la quatrième planète du Système solaire par ordre
  croissant de la distance au Soleil et la deuxième par ordre croissant de la
  taille et de la masse. Son éloignement au Soleil est compris entre 1,381 et
  1,666 UA, avec une période orbitale de 669,58 jours martiens.",
  price_per_millenia: 25,
  rating: 4.5,
  owner: dionysos
)
file = URI.open("https://img-4.linternaute.com/6pObiE0kS-OFeUE4mrwXcwef6Tc=/1500x/smart/bccec01912df412a8d81e5ca17a42b02/ccmcms-linternaute/34274637.jpg")
mars.photo.attach(io: file, filename: "smars.jpg", content_type: "image/jpg")
mars.save!

pluton = Planet.new(
  name: "Pluton",
  address: "Sriharikota, Andhra Pradesh 524124, Inde",
  capacity: 5,
  description: "Pluton, officiellement désignée par Pluton, est une planète
  naine, la plus volumineuse connue dans le Système solaire, et la deuxième
  en ce qui concerne sa masse. Pluton est ainsi le neuvième plus gros objet
  connu orbitant directement autour du Soleil et le dixième par la masse. ",
  price_per_millenia: 10,
  rating: 3.5,
  owner: quentin
)
file = URI.open("https://www.observatoiredeparis.psl.eu/IMG/jpg/pluton2015.jpg")
pluton.photo.attach(io: file, filename: "Pluton.jpg", content_type: "image/jpg")
pluton.save!

mercure = Planet.new(
  name: "Mercure",
  address: "apon, 〒891-3703 Kagoshima, Kumage District, Minamitane, Kukinaga, 9999-7 ",
  capacity: 5,
  description: "Mercure est l'une des quatre planètes telluriques du Système
  solaire, et possède un corps rocheux comme la Terre. C'est également la plus
  petite, avec un rayon équatorial de 2 439,7 km. Mercure est également plus
  petite — bien que plus massive — que deux satellites naturels du Système
  solaire, Ganymède et Titan.",
  price_per_millenia: 35,
  rating: 3.5,
  owner: quentin
)
file = URI.open("http://www.tiens-lunivers.fr/img/mercure-planete.jpg")
mercure.photo.attach(io: file, filename: "Mercure.jpg", content_type: "image/jpg")
mercure.save!
puts 'Planets created'

puts 'Creating 5 fake bookings...'

booking_1 = Booking.new(
  departure_date: 2023,
  arrival_date: 3023,
  status: "pending",
  total_price: 20,
  user: guillaume,
  planet: pluton
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
