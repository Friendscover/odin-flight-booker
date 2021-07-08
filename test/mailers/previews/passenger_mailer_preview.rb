# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def booked_flight_email
    PassengerMailer.with(booking: Booking.last).booked_flight_email
  end 
end
