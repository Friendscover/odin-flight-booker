# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeding random Airports for the DB
Flight.delete_all

airports = ["NYC", "SFO", "SEA", "JFK", "ABC", "SFS", "ACD"]

airports.each do |port|
  Airport.create(code: port)
end

# Building Flight associations for each Airport
airports = Airport.all

airports.each do |airport|
  airport.arriving_flights.build(start_airport: Airport.last, finish_airport: Airport.last).save
end

