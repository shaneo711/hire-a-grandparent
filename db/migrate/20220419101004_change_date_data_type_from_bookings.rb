class ChangeDateDataTypeFromBookings < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :date, :date
  end
end
