class AddIndexToTrainingHora < ActiveRecord::Migration[5.0]
  def change
    add_index :trainings, :hora
  end
end
