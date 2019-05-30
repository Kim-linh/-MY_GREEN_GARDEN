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

cactus = Plant.create!(variety: "Cactus", description:"Je ne manque pas d’apporter une belle dose de piquant à votre quotidien.", origin: "Je viens d'Afrique", maintenance: "Arrosez-moi 1 à 2 fois par mois en été et peu ou pas en hiver. Les apports en eau doivent être très légers.", category: "Cactus : petit", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559145855/cactus_pazkyu.jpg")
yucca = Plant.create!(variety: "Yucca", description: "Je suis une plante vivaces arbustive remarquable par mes rosettes de feuilles dures.", origin: "Je viens d'Europe du Sud et des Antilles", maintenance: "Arrosez-moi 1 fois par semaine en été et en hiver.", category: "Plantes vivaces arbustives", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559145860/yucca_wboju0.jpg")
calathea = Plant.create!(variety: "Calathea Médaillon", description:"J'ai besoin d'un peu d'attention pour m'épanouir.", origin: "Je viens d'une province d'Amérique du Sud", maintenance: "N’hésitez pas à m’arroser plusieurs fois par semaine au printemps et en été de façon à garder ma terre légèrement humide. Je ne supporte pas le plein soleil.", category: "Plantes herbacées", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559227540/calathea_yskoen.jpg")
kentia = Plant.create!(variety: "Kentia", description:"Je suis la plante parfaite pour apporter une touche luxuriantequelle pour votre intérieur.", origin: "Je viens d'une province à l'ouest de l'Australie", maintenance: "N’hésitez pas à m’arroser une à deux fois par semaine au printemps et en été. J'apprécie une exposition lumineuse, à l’abri des rayons directs du soleil. ", category: "Palmiers", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559227535/kentia_oatnuc.jpg")
ficus = Plant.create!(variety: "Ficus", description:"Je suis la plante incontournable de toute jungle d’intérieur digne de ce nom.", origin: "Je viens de l'Ocean Indien", maintenance: "N’hésitez pas à m’arroser une fois par semaine en été et un peu moins fréquemment en hiver. Trouvez-moi une petite place à la lumière. Je suis casanié, je n'aime donc pas que l'on me change de place. ", category: " Moraceae", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559227523/ficus_dt4mgs.jpg")
amstelking = Plant.create!(variety: "Ficus Amstel King", description:"Je suis la cousine du Ficus et toujours incontournable de toute jungle d’intérieur digne de ce nom.",origin: "Je viens de l'Ocean Indien", maintenance: "N’hésitez pas à m’arroser une fois par semaine en été et un peu moins fréquemment en hiver. Trouvez-moi une petite place à la lumière. Je suis casanié, je n'aime donc pas que l'on me change de place. ", category: " Moraceae", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559227526/amstelking_jxfhqe.jpg")
palmier = Plant.create!(variety: "Palmier", description: "Je diffuse une atmosphère estivale dans votre salon, quelle que soit la saison.", origin: "Je viens d'Afrique", maintenance: "Au printemps et en été, arrosez moi une à deux fois parsemaine. Le reste de l’année, réduisez les arrosages. ", category: "Palmier", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559145865/palmier_f2xykh.jpg" )
pilea = Plant.create!(variety: "Pilea", description: "Également connue sous le nom de Plante à monnaie chinoise, je suis une star végétale !", origin: "Je suis originaire d'une province Chinoise.", maintenance: "J'adore les endroits lumineux mais il faut que tu évites de m'exposer aux rayons du soleil. J'ai besoin d'être arrosé environ 2 fois par semaine en été, et une fois par semaine en hiver. L'arrosage doit se faire sans excès pour ne pas inonder mes racines. Il faut également me rempoter à chaque printemps pour que je puisse m'épanouir pleinement.", category: "Plante à fleurs", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559225343/pilea_gtrxpr.jpg")
strelitzia = Plant.create!(variety: "Strelitzia", description: "Mes feuilles géantes offrent un dépaysement quotidien, au coeur même de ton intérieur.", origin: "Mon nom honore la mémoire de la reine Charlotte d'Angleterre, la nation dont je suis originaire.", maintenance: "J'apprécie la lumière et je peux même supporter une ombre très légère. Tu dois m'arroser au moins 1 fois pas semaine au printemps et en été et réduire la fréquence en automne et en hiver. Attention à laisser sécher la terre en surface avant de me réarroser. J'ai besoin que tu coupes mes feuilles lorsqu'elles sont jaunes ou sèches et que tu brumises mon feuillage régulièrement.", category: "Plante à fleurs, plante tropicale", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559225348/strelitzia_dzahn9.jpg")
hoya = Plant.create!(variety: "Hoya", description: "Je suis une plante au charme renversant, aussi belle suspendue dans les airs que posée sur une de tes étagères.", origin: "Je suis originaire d'Extrême-Orient et d'Austalie tropicale", maintenance: "Il faut me chouchouter en m'offrand une belle place à la lumière sans soleil direct et en me préservant des coups de chaud. Je bois beaucoup d'eau, au moins 3 fois par semaine. Il faut que tu penses à laisser la terre sécher entre chaque apport d'eau.", category: "Plante à fleurs, plante tropicale, plante grimpante", remote_picture_url: "https://res.cloudinary.com/kimlinh/image/upload/v1559225350/hoya_ipq86u.jpg")

puts 'Plant OK...'

puts 'add a plant for user'

user_plant1 = UserPlant.new(name: "Coco le Cactus", origin_health: 1, remote_picture_url: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant1.user = nico
user_plant1.plant = cactus
user_plant1.save!

user_plant2 = UserPlant.new(name: "Bob le Yucca", origin_health: 4, remote_picture_url: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant2.user = nico
user_plant2.plant = yucca
user_plant2.save!

user_plant3 = UserPlant.new(name: "Coco le Cactus", origin_health: 2, remote_picture_url: "https://mediasv6.truffaut.com/Articles/jpg/0592000/592581_002_1000.jpg")
user_plant3.user = lola
user_plant3.plant = cactus
user_plant3.save!

user_plant4 = UserPlant.new(name: "Sharley le palmier", origin_health: 3, remote_picture_url: "https://maplante.ma/wp-content/uploads/2018/01/cycas-revoluta-revoluta-l.jpg")
user_plant4.user = tania
user_plant4.plant = palmier
user_plant4.save!

user_plant5 = UserPlant.new(name: "Ken le Coco..", origin_health: 0, remote_picture_url: "http://www.ulevante.fr/wp-content/uploads/2013/07/palmier.jpg")
user_plant5.user = barbie
user_plant5.plant = palmier
user_plant5.save!

puts 'Finiii'