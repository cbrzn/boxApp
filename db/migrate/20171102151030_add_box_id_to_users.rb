class AddBoxIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :box, foreign_key: true
  end
end
