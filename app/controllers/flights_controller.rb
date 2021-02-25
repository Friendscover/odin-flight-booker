class FlightsController < ApplicationController
  def index
    @flights = search_flights
    @to_airport_options = Airport.all.map { |a| [a.code, a.id] }
  end

  def search_flights
    if params.nil?
      return Flight.first(10)
    else
      Flight.where(flight_params)
    end
  end

  private

  def flight_params
    params.permit(:start_airport_id, :finish_airport_id, :start)
  end
end
