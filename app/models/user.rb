class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :planets, dependent: :destroy
  has_many :bookings, dependent: :nullify
  has_many :owner_bookings, through: :planets, source: :bookings
  has_one_attached :photo
end
