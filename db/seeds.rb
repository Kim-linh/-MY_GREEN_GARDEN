# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
UserPlant.destroy_all
User.destroy_all
Plant.destroy_all

puts 'add a profile...'

nico = User.create!(first_name: 'Nico', last_name: 'gentil', email: 'nico@lewagon.fr', password: 'azerty')
lola = User.create!(first_name: 'Lola', last_name: 'Poulette', email: 'lola@lewagon.fr', password: 'azerty')

puts 'add a plant...'

cactus = Plant.create!(variety: "cactus", description: "J’appartiens à la famille de plantes à fleurs et je viens du Texas, comme dans Texas Ranger.")
yucca = Plant.create!(variety: "yucca", description: "Je suis une plante vivaces arbustive remarquable par mes rosettes de feuilles dures.")
palmier = Plant.create!(variety: "palmier", description: "Je suis une plante qui vit dans les Caraïbes.")

puts 'Plant OK...'

puts 'add a plant for user'

user_plant1 = UserPlant.new(name: "Coco le Cactus", origin_health: 2, picture: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant1.user = nico
user_plant1.plant = cactus
user_plant1.save!

user_plant2 = UserPlant.new(name: "Bob le Yucca", origin_health: 2, picture: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant2.user = nico
user_plant2.plant = yucca
user_plant2.save!

user_plant3 = UserPlant.new(name: "Coco le Cactus", origin_health: 2, picture: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant3.user = lola
user_plant3.plant = cactus
user_plant3.save!

puts 'Finiii'


