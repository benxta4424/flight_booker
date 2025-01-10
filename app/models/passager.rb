class Passager < ApplicationRecord
  has_many :bookings
  belongs_to :flight
end
