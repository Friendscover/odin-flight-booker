class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.create(booking_params)

    PassengerMailer.with(booking: @booking).booked_flight_email.deliver_later

    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :commit, passengers_attributes: [:id, :name, :email])
  end
end
