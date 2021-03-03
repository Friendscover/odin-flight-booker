class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :passenger
      t.references :flight

      t.timestamps
    end
  end
end
