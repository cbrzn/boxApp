class AddBoxIdToTrainings < ActiveRecord::Migration[5.0]
  def change
    add_reference :trainings, :box, foreign_key: true
  end
end
