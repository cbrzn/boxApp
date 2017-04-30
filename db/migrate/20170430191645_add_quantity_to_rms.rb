class AddQuantityToRms < ActiveRecord::Migration[5.0]
  def change
    add_column :rms, :quantity, :integer
  end
end
