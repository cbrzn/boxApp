class Wod < ApplicationRecord
  belongs_to :user

  def self.this_day
    a = Time.now - 39600
    where("wday = ?", a.wday)
  end

end
