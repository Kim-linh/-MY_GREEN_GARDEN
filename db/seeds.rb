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
tania = User.create!(first_name: 'Tania', last_name: 'Johnson', email: 'tania@lewagon.fr', password: 'azerty')
barbie = User.create!(first_name: 'Barbie', last_name: 'Ken', email: 'barbie@lewagon.fr', password: 'azerty')

puts 'add a plant...'

cactus = Plant.create!(variety: "Cactus", description:"Je ne manque pas d’apporter une belle dose de piquant à votre quotidien.",origin: "Je viens d'Afrique", maintenance:"Arrosez-moi 1 à 2 fois par mois en été et peu ou pas en hiver. Les apports en eau doivent être très légers.", category:"Cactus : petit", picture:"https://res.cloudinary.com/kimlinh/image/upload/v1559145855/cactus_pazkyu.jpg")
yucca = Plant.create!(variety: "Yucca", description: "Je suis une plante vivaces arbustive remarquable par mes rosettes de feuilles dures.", picture: "https://res.cloudinary.com/kimlinh/image/upload/v1559145860/yucca_wboju0.jpg")
palmier = Plant.create!(variety: "Palmier", description: "Je suis une plante qui vit dans les Caraïbes.", picture:"https://bergamotte.imgix.net/assets/images/196438/original/IMG_2584-Edit-2.jpg?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1092&q=95&w=1092" )
calathea = Plant.create!(variety: "Calathea Médaillon", description:"J'ai besoin d'un peu d'attention pour m'épanouir.",origin: "Je viens d'une province d'Amérique du Sud", maintenance:"N’hésitez pas à m’arroser plusieurs fois par semaine au printemps et en été de façon à garder ma terre légèrement humide. Je ne supporte pas le plein soleil.", category:"Plantes herbacées", picture:"https://bergamotte.imgix.net/assets/images/182746/original/IMG_2696.jpg?1558112499?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1016&q=95&w=1016")
kentia = Plant.create!(variety: "Kentia", description:"Je suis la plante parfaite pour apporter une touche luxuriantequelle pour votre intérieur.",origin: "Je viens d'une province à l'ouest de l'Australie", maintenance:"N’hésitez pas à m’arroser une à deux fois par semaine au printemps et en été. J'apprécie une exposition lumineuse, à l’abri des rayons directs du soleil. ", category:"Palmiers", picture:"https://bergamotte.imgix.net/assets/images/182759/original/IMG_7542-Edit.jpg?1557931592?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1016&q=95&w=1016")
ficus = Plant.create!(variety: "Ficus", description:"Je suis la plante incontournable de toute jungle d’intérieur digne de ce nom.",origin: "Je viens de l'Ocean Indien", maintenance:"N’hésitez pas à m’arroser une fois par semaine en été et un peu moins fréquemment en hiver. Trouvez-moi une petite place à la lumière. Je suis casanié, je n'aime donc pas que l'on me change de place. ", category:" Moraceae", picture:"https://bergamotte.imgix.net/assets/images/123011/original/IMG_2640-Edit.jpg?1557994096?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1016&q=95&w=1016")
amstelking = Plant.create!(variety: "Ficus Amstel King", description:"Je suis la cousine du Ficus et toujours incontournable de toute jungle d’intérieur digne de ce nom.",origin: "Je viens de l'Ocean Indien", maintenance:"N’hésitez pas à m’arroser une fois par semaine en été et un peu moins fréquemment en hiver. Trouvez-moi une petite place à la lumière. Je suis casanié, je n'aime donc pas que l'on me change de place. ", category:" Moraceae", picture:"https://bergamotte.imgix.net/assets/images/196440/original/IMG_2584-Edit-2.jpg?1558105648?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1016&q=95&w=1016")

puts 'Plant OK...'

puts 'add a plant for user'

user_plant1 = UserPlant.new(name: "Coco le Cactus", origin_health: 1, picture: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant1.user = nico
user_plant1.plant = cactus
user_plant1.save!

user_plant2 = UserPlant.new(name: "Bob le Yucca", origin_health: 4, picture: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant2.user = nico
user_plant2.plant = yucca
user_plant2.save!

user_plant3 = UserPlant.new(name: "Coco le Cactus", origin_health: 2, picture: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant3.user = lola
user_plant3.plant = cactus
user_plant3.save!

user_plant4 = UserPlant.new(name: "Sharley le palmier", origin_health: 3, picture: "https://maplante.ma/wp-content/uploads/2018/01/cycas-revoluta-revoluta-l.jpg")
user_plant4.user = tania
user_plant4.plant = palmier
user_plant4.save!

user_plant5 = UserPlant.new(name: "Ken le Coco..", origin_health: 0, picture: "http://www.ulevante.fr/wp-content/uploads/2013/07/palmier.jpg")
user_plant5.user = barbie
user_plant5.plant = palmier
user_plant5.save!


puts 'Finiii'
