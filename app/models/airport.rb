class Airport < ApplicationRecord
  has_many :departing_flights, class_name: "Flight", foreign_key: "departure_flight_id"
  has_many :arriving_flights, class_name: "Flight", foreign_key: "arrival_flight_id"
end
