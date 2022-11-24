class Planet < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :nullify
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :photo, presence: true
end
