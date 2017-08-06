class AddExcercisesToWod < ActiveRecord::Migration[5.0]
  def change
    add_column :wods, :warmupone, :text
    add_column :wods, :warmuptwo, :text
    add_column :wods, :warumupthree, :text
    add_column :wods, :warmupfour, :text
    add_column :wods, :warmupfive, :text
    add_column :wods, :skillone, :text
    add_column :wods, :skilltwo, :text
    add_column :wods, :skillthree, :text
    add_column :wods, :skillfour, :text
    add_column :wods, :skillfive, :text
    add_column :wods, :skillsix, :text
    add_column :wods, :wodmode, :text
    add_column :wods, :wodone, :text
    add_column :wods, :wodtwo, :text
    add_column :wods, :wodthree, :text
    add_column :wods, :wodfour, :text
    add_column :wods, :wodfive, :text
    add_column :wods, :wodsix, :text
  end
end
