class AddExcercises2ToWod < ActiveRecord::Migration[5.0]
  def change
    add_column :wods, :warmupsix, :text
  end
end
