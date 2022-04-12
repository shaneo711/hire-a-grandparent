class CreateGrandparents < ActiveRecord::Migration[6.1]
  def change
    create_table :grandparents do |t|
      t.string :name
      t.text :description
      t.datetime :availability
      t.string :interest
      t.string :location

      t.timestamps
    end
  end
end
