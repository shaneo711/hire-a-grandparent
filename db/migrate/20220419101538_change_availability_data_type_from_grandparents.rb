class ChangeAvailabilityDataTypeFromGrandparents < ActiveRecord::Migration[6.1]
  def change
    change_column :grandparents, :availability, :date
  end
end
