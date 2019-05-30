class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :activities, dependent: :destroy
  validates :name, presence: true
  validates :origin_health, presence: true

  enum origin_health: { awful: 0, bad: 1, ok: 2, good: 3, excellent: 4 }

  # delegate :variety, :description, to: :plant
  def variety
    plant.variety
  end

  def description
    plant.description
  end
end
