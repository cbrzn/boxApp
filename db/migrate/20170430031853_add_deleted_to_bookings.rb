class AddDeletedToBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :deleted
  end
end
