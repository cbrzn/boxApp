class AddIndexToGuests < ActiveRecord::Migration[5.0]
  def change
    add_index :guests, :ci, unique: true
  end
end
