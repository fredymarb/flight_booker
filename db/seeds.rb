# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting all Airports"
Airport.destroy_all

airport_codes = [ "ATL", "JFK", "LAX", "SFO" ]

puts "Creating #{airport_codes.length} airport(s)"
airport_codes.each do |code|
  Airport.find_or_create_by!(code: code)
end


# seed flights
puts "Deleting all Flights"
Flight.destroy_all

airports = Airport.all

airports.each do |departure|
  airports.each do |arrival|
    next if departure == arrival

    Flight.find_or_create_by!(
      departure_airport: departure,
      arrival_airport: arrival,
      start_datetime: Time.current + rand(1..7).days,
      flight_duration_in_minutes: rand(15..120)
      )
    end
  end

  puts "Created #{Flight.count} flights"
