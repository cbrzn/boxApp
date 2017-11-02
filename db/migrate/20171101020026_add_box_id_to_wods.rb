class AddBoxIdToWods < ActiveRecord::Migration[5.0]
  def change
    add_reference :wods, :box, foreign_key: true
  end
end
