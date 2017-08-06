class CreateWods < ActiveRecord::Migration[5.0]
  def change
    create_table :wods do |t|
      t.text :warmup
      t.text :inbetween
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :wods, [:user_id, :created_at]
  end
end
