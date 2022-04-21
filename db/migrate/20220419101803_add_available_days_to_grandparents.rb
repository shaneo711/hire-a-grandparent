class AddAvailableDaysToGrandparents < ActiveRecord::Migration[6.1]
  def change
    add_column :grandparents, :monday, :boolean
    add_column :grandparents, :tuesday, :boolean
    add_column :grandparents, :wednesday, :boolean
    add_column :grandparents, :thursday, :boolean
    add_column :grandparents, :friday, :boolean
    add_column :grandparents, :saturday, :boolean
    add_column :grandparents, :sunday, :boolean
  end
end
