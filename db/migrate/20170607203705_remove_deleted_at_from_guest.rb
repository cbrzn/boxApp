class RemoveDeletedAtFromGuest < ActiveRecord::Migration[5.0]
  def change
    remove_column :guests, :deleted_at, :datetime
  end
end
