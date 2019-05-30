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

cactus = Plant.create!(variety: "Cactus", description: "J’appartiens à la famille de plantes à fleurs et je viens du Texas, comme dans Texas Ranger.", origin: "africa", maintenance:"pas beaucoup d'eau", category:"plante à fleurs", picture: "https://res.cloudinary.com/kimlinh/image/upload/v1559145855/cactus_pazkyu.jpg")
yucca = Plant.create!(variety: "Yucca", description: "Je suis une plante vivaces arbustive remarquable par mes rosettes de feuilles dures.", picture: "https://res.cloudinary.com/kimlinh/image/upload/v1559145860/yucca_wboju0.jpg")
palmier = Plant.create!(variety: "Palmier", description: "Je suis une plante qui vit dans les Caraïbes.", picture:"https://res.cloudinary.com/kimlinh/image/upload/v1559145865/palmier_f2xykh.jpg" )
pilea = Plant.create!(variety: "Pilea", description: "Également connue sous le nom de Plante à monnaie chinoise, je suis une star végétale !", origin: "Je suis originaire d'une province Chinoise.", maintenance:"J'adore les endroits lumineux mais il faut que tu évites de m'exposer aux rayons du soleil. J'ai besoin d'être arrosé environ 2 fois par semaine en été, et une fois par semaine en hiver. L'arrosage doit se faire sans excès pour ne pas inonder mes racines. Il faut également me rempoter à chaque printemps pour que je puisse m'épanouir pleinement.", category:"Plante à fleurs", picture: 'https://bergamotte.imgix.net/assets/images/208258/original/IMG_8513.jpg?1558371697?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1016&q=95&w=1016')
strelitzia = Plant.create!(variety: "Strelitzia", description: "Mes feuilles géantes offrent un dépaysement quotidien, au coeur même de ton intérieur.", origin: "Mon nom honore la mémoire de la reine Charlotte d'Angleterre, la nation dont je suis originaire.", maintenance:"J'apprécie la lumière et je peux même supporter une ombre très légère. Tu dois m'arroser au moins 1 fois pas semaine au printemps et en été et réduire la fréquence en automne et en hiver. Attention à laisser sécher la terre en surface avant de me réarroser. J'ai besoin que tu coupes mes feuilles lorsqu'elles sont jaunes ou sèches et que tu brumises mon feuillage régulièrement.", category:"Plante à fleurs, plante tropicale", picture: 'https://bergamotte.imgix.net/assets/images/99870/original/IMG_7930-2.jpg?1553699888?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1016&q=95&w=1016')
hoya = Plant.create!(variety: "Hoya", description: "Je suis une plante au charme renversant, aussi belle suspendue dans les airs que posée sur une de tes étagères.", origin: "Je suis originaire d'Extrême-Orient et d'Austalie tropicale", maintenance: "Il faut me chouchouter en m'offrand une belle place à la lumière sans soleil direct et en me préservant des coups de chaud. Je bois beaucoup d'eau, au moins 3 fois par semaine. Il faut que tu penses à laisser la terre sécher entre chaque apport d'eau.", category: "Plante à fleurs, plante tropicale, plante grimpante", picture: "https://bergamotte.imgix.net/assets/images/130276/original/IMG_7485.jpg?1554314253?ixlib=rails-2.1.4&auto=format%2Ccompress&fit=crop&h=1016&q=95&w=1016")


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
