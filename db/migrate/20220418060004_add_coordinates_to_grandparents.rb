class AddCoordinatesToGrandparents < ActiveRecord::Migration[6.1]
  def change
    add_column :grandparents, :latitude, :float
    add_column :grandparents, :longitude, :float
  end
end
