class CreateRms < ActiveRecord::Migration[5.0]
  def change
    create_table :rms do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :rms, [:user_id, :created_at]
  end
end
