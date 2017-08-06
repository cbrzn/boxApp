class Wod < ApplicationRecord
  belongs_to :user

  def self.this_day
    where("wday = ?", Date.today.cwday)
  end

end
