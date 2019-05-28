class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :activities
  validates :name, presence:true
  validates :origin_health, presence:true
  enum origin_health: { awful:0, bad:1, OK:2, good:3, excellent:4 }

  #delegate :variety, :description, to: :plant

  def variety
    plant.variety
  end

  def description
    plant.description
  end
end
