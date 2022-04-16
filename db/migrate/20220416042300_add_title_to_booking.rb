class AddTitleToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :title, :string
  end
end
