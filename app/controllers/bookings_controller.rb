class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    2.times { @booking.passengers.build }

    #if @booking.save
     # redirect_to bookings_path
    #end
  end

  def create
    @booking
  end
end
