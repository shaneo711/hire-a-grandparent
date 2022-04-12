class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.boolean :confirmed
      t.references :user, null: false, foreign_key: true
      t.references :grandparent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
