class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    2.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.create(booking_params)

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :commit, passengers_attributes: [:id, :name, :email])
  end
end
