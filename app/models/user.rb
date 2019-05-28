class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_plants
  has_many :plants, through: :user_plants
  has_many :activities, through: :user_plants
  validates :first_name, presence:true
  validates :last_name, presence:true, uniqueness:true
end
