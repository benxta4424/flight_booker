class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  has_many :bookings
  has_many :passagers, through: :bookings
end
