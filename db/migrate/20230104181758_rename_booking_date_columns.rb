class RenameBookingDateColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :start_date, :pick_up_date
    rename_column :bookings, :end_date, :return_date
  end
end
