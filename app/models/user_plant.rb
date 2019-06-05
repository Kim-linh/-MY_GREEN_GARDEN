class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :activities, dependent: :destroy
  has_many :waters, dependent: :destroy
  validates :name, presence: true
  validates :origin_health, presence: true
  after_create :first_water

  enum origin_health: { critique: 0, terne: 1, impeccable: 2, magnifique: 3, splendide: 4 }
  mount_uploader :picture, PictureUploader
  # delegate :variety, :description, to: :plant
  def variety
    plant.variety
  end

  def description
    plant.description
  end

  def first_water
    Water.create(user_plant: self)
  end
end
