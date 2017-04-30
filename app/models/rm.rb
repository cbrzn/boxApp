class Rm < ApplicationRecord
  belongs_to :user
  scope :content, -> { where(featured: true) }
  validates_presence_of :quantity, :content

  def self.latest_rm
    order('created_at desc').first
  end
end
