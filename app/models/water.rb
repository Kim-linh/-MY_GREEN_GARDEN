class Water < ApplicationRecord
  belongs_to :user_plant
  # has_many :plants, through: :user_plants

  def countdown
    days = Plant.last.days
    daily_water = days.days
    dateX = self.created_at + daily_water.days
    date_seconds = dateX - DateTime.now
    date_to_date = date_seconds / (60 * 60 * 24)
    days = date_to_date.round
    # hours_to_date = (date_to_date - days) * 24
    # hours_to_date.round
  end
end
