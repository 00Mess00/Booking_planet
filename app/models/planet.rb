class Planet < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :nullify
  has_one_attached :photo
end
