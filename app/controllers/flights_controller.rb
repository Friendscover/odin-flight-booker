class FlightsController < ApplicationController
  def index
    @flights = search_flights
    @to_airport_options = Airport.all.map { |a| [a.code, a.id] }
  end

  def search_flights
    if params.nil?
      return Flight.all
    else
      Flight.all.where(start_airport_id: params[:start_airport_id])
    end
  end
end
