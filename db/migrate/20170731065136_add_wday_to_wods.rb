class AddWdayToWods < ActiveRecord::Migration[5.0]
  def change
    add_column :wods, :wday, :integer
  end
end
