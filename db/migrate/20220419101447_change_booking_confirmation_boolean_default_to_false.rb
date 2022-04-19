class ChangeBookingConfirmationBooleanDefaultToFalse < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :confirmed, :boolean, default: false
  end
end
