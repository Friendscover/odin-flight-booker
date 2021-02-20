class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @to_airport_options = Airport.all.map { |a| [a.code] }
  end
end
