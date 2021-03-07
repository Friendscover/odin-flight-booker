class FlightsController < ApplicationController
  def index
    @flights = search_flights
    @to_airport_options = Airport.all.map { |a| [a.code, a.id] }
    @start_options = Flight.all.map { |a| Date.parse(a.start.to_s) }.uniq
  end

  def search_flights
    if params[:commit].present?
      Flight.where("start_airport_id = ? AND finish_airport_id = ? AND start BETWEEN ? AND ?", params[:start_airport_id], params[:finish_airport_id], DateTime.parse(params[:start]).beginning_of_day, DateTime.parse(params[:start]).end_of_day)
    else
      return Flight.where("id >= ?", Flight.last.id - 10)
    end
  end
end
