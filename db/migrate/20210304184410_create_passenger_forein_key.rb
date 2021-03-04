class CreatePassengerForeinKey < ActiveRecord::Migration[6.1]
  def change
    remove_column(:bookings, :passenger_id, :foreign_key)
    add_reference(:passengers, :booking, foreign_key: true)
  end
end
