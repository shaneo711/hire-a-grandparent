class AddImageToGrandparent < ActiveRecord::Migration[6.1]
  def change
    add_column :grandparents, :image, :string
  end
end
