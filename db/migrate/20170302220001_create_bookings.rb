class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :booker_id
      t.integer :booked_id

      t.timestamps
    end
    add_index :bookings, :booker_id
    add_index :bookings, :booked_id
    add_index :bookings, [:booker_id, :booked_id], unique: true
  end
end
