class Water < ApplicationRecord
  belongs_to :user_plant
  # has_many :plants, through: :user_plants

  def countdown
      watering = self.user_plant.plant.days
      futur_date = self.created_at + watering.days
      date_seconds = futur_date - DateTime.now
      date_to_date = date_seconds / (60 * 60 * 24)
      days_to_water = date_to_date.round
      # Affichage en seconde
      # hours_to_date = (date_to_date - date_seconds) * 24
      # hours_to_date.round
  end
end
