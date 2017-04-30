class Rm < ApplicationRecord
  belongs_to :user, inverse_of: :rms
  scope :content, -> { where(featured: true) }

  def self.latest_rm
    order('created_at desc').first
  end
end
