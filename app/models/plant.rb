class Plant < ApplicationRecord
  has_many :user_plants
  has_many :users, -> { distinct }, through: :user_plants
  validates :variety, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10 }

  def to_s
    variety
  end
end
