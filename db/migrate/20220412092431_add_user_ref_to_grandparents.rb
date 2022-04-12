class AddUserRefToGrandparents < ActiveRecord::Migration[6.1]
  def change
    add_reference :grandparents, :user, null: false, foreign_key: true
  end
end
