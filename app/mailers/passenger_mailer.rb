class PassengerMailer < ApplicationMailer
  def booked_flight_email
    #@passenger = params[:passengers_attributes]
    @booking = params[:booking]
    @passenger = @booking.passengers.first

    mail(to: @passenger.email, subject: 'Thank you for booking a flight!')
  end
end
