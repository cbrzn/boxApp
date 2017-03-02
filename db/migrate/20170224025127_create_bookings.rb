class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :Training_id
      t.integer :User_id

      t.timestamps
    end
    add_index :bookings, :Training_id
    add_index :bookings, :User_id
    add_index :bookings, [:Training_id, :User_id], unique: true
  end
end
