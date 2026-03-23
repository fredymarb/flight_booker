class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  has_many :bookings, foreign_key: :flight_id, class_name: "Booking"

  def self.search(departure_id, arrival_id, date)
    where(
      departure_airport_id: departure_id,
      arrival_airport_id: arrival_id,
      start_datetime: Date.parse(date).all_day
    )
  end
end
