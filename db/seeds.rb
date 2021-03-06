# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeding random Airports for the DB
Flight.delete_all
Airport.delete_all

airports = ["NYC", "SFO", "SEA", "JFK", "ABC", "SFS", "ACD", "ZTO", "BER", "MUN"]

airports.each do |port|
  Airport.create(code: port)
end

puts "Generating random flights. This may take a while"
# Building Flight associations for each Airport
airports = Airport.all

20.times do 
  airports.each_with_index do |airport|
    airport.arriving_flights.build(start_airport: Airport.find(airports.sample.id), finish_airport: Airport.find(airports.sample.id), start: (Time.now + (rand 10).days), flight_duration: (rand 200)).save
    airport.departing_flights.build(start_airport: Airport.find(airports.sample.id), finish_airport: Airport.find(airports.sample.id), start: (Time.now + (rand 10).days), flight_duration: (rand 200)).save
  end
end