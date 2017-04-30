class RemoveQuantityFromRms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rms, :quantity, :integer
  end
end
