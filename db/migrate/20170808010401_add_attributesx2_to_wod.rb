class AddAttributesx2ToWod < ActiveRecord::Migration[5.0]
  def change
    add_column :wods, :wodseven, :text
    add_column :wods, :wodeight, :text
    add_column :wods, :wodnine, :text
    add_column :wods, :wodten, :text
    add_column :wods, :wodeleven, :text
    add_column :wods, :wodtwelve, :text
    add_column :wods, :wodthirteen, :text
    add_column :wods, :wodfourteen, :text
    add_column :wods, :wodfifteen, :text
  end
end
