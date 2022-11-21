class User < ApplicationRecord
  has_many :planets
  has_many :bookings
  has_many :owner_bookings, through: :planets, source: :bookings

end
