class Guest < ApplicationRecord
  belongs_to :training
  belongs_to :user
  validates :ci, presence: true, uniqueness: true
  validates :user_id, presence: true
  validates :training_id, presence: true
  validate :training_not_full?, on: :create


  def self.today
    where("created_at >= ?", Time.zone.today)
  end

private

  def training_not_full?
    errors.add(:base, :full, message: "No hay mas cupos para invitados") unless training.can_invite?
  end

end
