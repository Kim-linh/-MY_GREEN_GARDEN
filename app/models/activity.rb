class Activity < ApplicationRecord
  belongs_to :user_plant
  validates :date, presence: true
  validates :health, presence: true
  enum health: { awful: 0, bad: 1, OK: 2, good: 3, excellent: 4 }
end
