class AddDeletedAtToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :deleted_at, :datetime,  where: "deleted_at IS NULL"
    add_index :bookings, :deleted_at,  where: "deleted_at IS NULL"
  end
end
