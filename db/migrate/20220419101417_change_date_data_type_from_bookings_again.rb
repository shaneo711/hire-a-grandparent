class ChangeDateDataTypeFromBookingsAgain < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :date, :datetime
  end
end
