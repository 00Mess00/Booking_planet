class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  validates :departure_date, :arrival_date, presence: true
end
