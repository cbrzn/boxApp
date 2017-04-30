class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.text :name
      t.integer :ci
      t.references :training, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :guests, [:user_id, :created_at]

  end
end
