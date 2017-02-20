class AddIndexToUsersCi < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :ci, unique: true
  end
end
