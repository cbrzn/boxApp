class AddDeletedAtToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :deleted_at, :datetime, where: "deleted_at IS NULL"
    add_index :guests, :deleted_at, where: "deleted_at IS NULL"
  end
end
