class AddMaxToRms < ActiveRecord::Migration[5.0]
  def change
    add_column :rms, :max, :integer
  end
end
