class Wod < ApplicationRecord
  belongs_to :user

  def self.this_day
    time = Time.now + 14400
    where("wday = ?", time.wday)
  end

end
