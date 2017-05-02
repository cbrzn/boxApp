class AddGuestslotToTraining < ActiveRecord::Migration[5.0]
  def change
    add_column :trainings, :guestslot, :integer
  end
end
