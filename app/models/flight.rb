class Flight < ApplicationRecord
  validates :start_datetime, :duration, presence: true
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  has_many :bookings
end
