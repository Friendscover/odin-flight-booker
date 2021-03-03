class Flight < ApplicationRecord
  belongs_to :start_airport, class_name: "Airport"
  belongs_to :finish_airport, class_name: "Airport"
  has_many :bookings

  def start_time_formatted
    start.strftime("%d/%m/%Y")
  end

  def display_flight_info
    "Starts at: #{start.strftime('%d/%m/%Y-%H:%M')} at #{start_airport.code} and arrives at #{finish_airport.code}"
  end
end