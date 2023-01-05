class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :pickup_date
      t.datetime :return_date

      t.timestamps
    end
  end
end
