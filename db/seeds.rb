# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

airport_codes = [
  "NYC", "JFK", "SFO", "LAX", "ATL", "MIA",
  "SEA", "BOS", "DEN", "LAS", "MSP", "PHL"
]

airport_codes.each do |code|
  Airport.create!(airport_code: code)
end

airport_codes.each do |departure|
  airport_codes.each do |arrival|
    Flight.create!(
      departure_airport: Airport.find_by(departure),
      arrival_airport: Airport.find_by(arrival),
      start_datetime: Faker::Time.forward(days: 60),
      flight_duration: rand(15..240)
    )
  end
end
