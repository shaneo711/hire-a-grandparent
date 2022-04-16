class AddDescriptionToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :description, :text
  end
end
