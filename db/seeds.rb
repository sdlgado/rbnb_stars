# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
puts "starting the seeds"
puts "reseting instances"
Booking.destroy_all
StarPart.destroy_all
User.destroy_all
puts "reseting instances done"

require 'open-uri'

puts "Starting User seed"

tanguy = User.new({
  username: "Tanguy",
  first_name: "Tanguy",
  last_name: "Blondiaux",
  email: "tanguy.blondiaux@gmail.com",
  password: "azerty"
  })
file = URI.open('https://americancrew-assets1.netlify.com/images/00tallcollection/Styling_0004_Styling.jpg')
tanguy.photo.attach(io: file, filename: 'tanguy-image.jpg', content_type: 'image/jpg')
tanguy.save

sergio = User.new({
  username: "Sergio",
  first_name: "Sergio",
  last_name: "Delgado",
  email: "sergio.delgado@gmail.com",
  password: "azerty"
  })
file = URI.open('https://de9luwq5d40h2.cloudfront.net/catalog/product/large_image/05_419994.jpg')
sergio.photo.attach(io: file, filename: 'sergio-image.jpg', content_type: 'image/jpg')
sergio.save

adelaide = User.new({
  username: "Adelaide",
  first_name: "Adelaide",
  last_name: "Blot",
  email: "adelaide.blot@gmail.com",
  password: "azerty"
  })
file = URI.open('https://i2-prod.mirror.co.uk/incoming/article20665665.ece/ALTERNATES/s615/1_Laura7.jpg')
adelaide.photo.attach(io: file, filename: 'ade-image.jpg', content_type: 'image/jpg')
adelaide.save

thibaud = User.new({
  username: "Thibaud",
  first_name: "Thibaud",
  last_name: "Allain",
  email: "thibaud.allain@gmail.com",
  password: "azerty"
  })
file = URI.open('https://static.kiabishop.com/en/images/round-neck-sweater-blue-men-size-s-to-xxl-xd293_1_fr1.jpg')
thibaud.photo.attach(io: file, filename: 'thibaud-image.jpg', content_type: 'image/jpg')
thibaud.save

barbara = User.new({
  username: "Barbara",
  first_name: "Barbara",
  last_name: "Dupont",
  email: "barbara.dupont@gmail.com",
  password: "azerty"
  })
file = URI.open('https://cdn.thedailymash.co.uk/wp-content/uploads/20191001111546/womcoff1-667x375.jpg')
barbara.photo.attach(io: file, filename: 'barbara-image.jpg', content_type: 'image/jpg')
barbara.save

helene = User.new({
  username: "Helene",
  first_name: "Helene",
  last_name: "Pichon",
  email: "helene.pichon@gmail.com",
  password: "azerty"
  })
file = URI.open('https://media.gettyimages.com/photos/studio-shot-of-young-beautiful-woman-picture-id611310330?s=612x612')
helene.photo.attach(io: file, filename: 'helene-image.jpg', content_type: 'image/jpg')
helene.save


puts "End of User seed"
puts "Starting Stars seed"


cardi = StarPart.new({
  name_of_star: "Cardi B",
  category: "bottom",
  description: "Caution: this butt might bust out!",
  name_of_part: "butt",
  rating: rand(1..5),
  price: 90000,
  address: "1741-1701 N Las Palmas Ave
  Los Angeles, CA 90028, États-Unis"
})

cardi.user_id = tanguy.id

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cardi-b-finesse-1523301612.jpg?crop=1xw:1xh;center,top&resize=480:*')
cardi.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
cardi.save


beyonce = StarPart.new({
  name_of_star: "Queen B",
  category: "bottom",
  description: "So many hours of practice in just one click 👇 Book now!",
  name_of_part: "butt",
  rating: rand(1..5),
  price: 90000,
  address: "2100-2154 Canyon Dr Los Angeles, CA 90068 États-Unis"
})

beyonce.user_id = tanguy.id

file = URI.open('https://pbs.twimg.com/media/CoTArKIWcAAV4i0.jpg')
beyonce.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
beyonce.save

kim = StarPart.new({
  name_of_star: "Kim Kardashian",
  category: "bottom",
  description: "Isn't this butt famous for crashing the Internet? You need it!",
  name_of_part: "butt",
  rating: rand(1..5),
  price: 30000,
  address: "1025 N Fairfax Ave West Hollywood, CA 90046, États-Unis"
})

kim.user_id = tanguy.id

file = URI.open('https://images.complex.com/complex/image/upload/c_limit,dpr_auto,q_90,w_720/fl_lossy,pg_1/lzbumkjdcyd8aw22ok3m.jpg')
kim.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
kim.save


scarlett = StarPart.new({
  name_of_star: "Scarlett Johansson",
  category: "bust",
  description: "With this bust, we bet you will you want to show off your cleavage all day long… Look me in the eyes!",
  name_of_part: "breasts",
  rating: rand(1..5),
  price: 50000,
  address: "936 N Formosa Ave Los Angeles, CA 90046, États-Unis"
})
scarlett.user_id = tanguy.id

file = URI.open('https://www.celebplasticsurgeryonline.com/wp-content/uploads/2015/09/Scarlett-Johansson-before-breast-reduction-02.jpg')
scarlett.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
scarlett.save


lebron = StarPart.new({
  name_of_star: "LeBron James",
  category: "bust",
  description: "Aaaaaand, duuuuuunk! These arms will give you superpowers… use with caution",
  name_of_part: "arms",
  rating: rand(1..5),
  price: 20000,
  address: "Little Havana Miami, Floride, États-Unis"
})

lebron.user_id = tanguy.id

file = URI.open('https://a.espncdn.com/photo/2019/0201/r496197_1296x729_16-9.jpg')
lebron.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
lebron.save


gad = StarPart.new({
  name_of_star: "Gad Elmaleh",
  category: "head",
  description: "Beautiful blue eyes to match the color of the sea during your holidays at the beach",
  name_of_part: "eyes",
  rating: rand(1..5),
  price: 6000,
  address: "48 rue du Louvre, Paris"
})

gad.user_id = tanguy.id

file = URI.open('https://s3.amazonaws.com/webassets.ticketmob.com/LS/images/comedians/BDCAB0C9-B940-0484-9FFE4ECFB657E030.jpg')
gad.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
gad.save

puts "Seeds tanguy done"


jason = StarPart.new({
  name_of_star: "Jason Statham",
  category: "bust",
  description: "Who has never dreamt of having these abs? But going to the gym… ugh, no, thanks!",
  name_of_part: "abs",
  rating: rand(1..5),
  price: 10000,
  address: "900-1000 Crescent Heights Blvd Los Angeles, CA 90046, États-Unis"
})

jason.user_id = adelaide.id

file = URI.open('https://i.ytimg.com/vi/VtbS8mNpgus/maxresdefault.jpg')
jason.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jason.save


adriana = StarPart.new({
  name_of_star: "Adriana Lima",
  category: "bottom",
  description: "Get those superb legs to be the queen of the beach",
  name_of_part: "legs",
  rating: rand(1..5),
  price: 100000,
  address: "Camaçari Bahia, Brésil"
})

adriana.user_id = adelaide.id

file = URI.open('https://www.fashiongonerogue.com/wp-content/uploads/2019/03/Adriana-Lima-Schutz-Resort-2019-Campaign03.jpg')
adriana.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
adriana.save


al = StarPart.new({
  name_of_star: "Al Pacino",
  category: "head",
  description: "Moustaches are back in trend… get yours!",
  name_of_part: "moustache",
  rating: rand(1..5),
  price: 5000,
  address: "6767 Hollywood Blvd Los Angeles, CA 90028, États-Unis"
})

al.user_id = adelaide.id

file = URI.open('https://ca-times.brightspotcdn.com/dims4/default/91640a9/2147483647/strip/true/crop/2048x1365+0+0/resize/840x560!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F48%2Ff9%2F323abcf91726d4bfc01ac2aed81e%2F2367517-ca-1113-al-pacino-04-rrd-jpg-20150114')
al.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
al.save


robert = StarPart.new({
  name_of_star: "Robert Downey Jr.",
  category: "head",
  description: "No bad hair day anymore… and you don't even have to buy a wig!",
  name_of_part: "hair",
  rating: rand(1..5),
  price: 3000,
  address: "7198-7150 Waring Ave Los Angeles, CA 90046, États-Unis"
})

robert.user_id = adelaide.id

file = URI.open('https://pmcvariety.files.wordpress.com/2017/03/robert-downey-jr1.jpg?w=1000')
robert.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
robert.save


johnny = StarPart.new({
  name_of_star: "Johnny Depp",
  category: "head",
  description: "Want to be a pirate for a bit? Easy with this moustache",
  name_of_part: "moustache",
  rating: rand(1..5),
  price: 6000,
  address: "1016 Cole Ave Los Angeles, CA 90038, États-Unis"
})

johnny.user_id = adelaide.id

file = URI.open('https://static.lexpress.fr/medias_11774/w_2048,h_1146,c_crop,x_0,y_89/w_480,h_270,c_fill,g_north/v1520600881/johnny-depp-the-premiere-of-disneys-pirates-of-the-caribbean-dead-men-tell-no-tales-hollywood_6028438.jpg')
johnny.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
johnny.save


bradley = StarPart.new({
  name_of_star: "Bradley",
  category: "head",
  description: "What a smile, they will say…",
  name_of_part: "smile",
  rating: rand(1..5),
  price: 12000,
  address: "645 N Ardmore Ave Los Angeles, CA 90004, États-Unis"
})

bradley.user_id = adelaide.id

file = URI.open('https://cdn.britannica.com/57/199057-050-CCE5410A/Bradley-Cooper-2008.jpg')
bradley.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bradley.save

puts "Seeds adelaide done"

nicole = StarPart.new({
  name_of_star: "Nicole Kidman",
  category: "head",
  description: "Want to be an incendiary red head this weekend?",
  name_of_part: "hair",
  rating: rand(1..5),
  price: 9000,
  address: "West Hollywood Californie, États-Unis"
})

nicole.user_id = thibaud.id

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Nicole_Kidman_Cannes_2017_4.jpg/260px-Nicole_Kidman_Cannes_2017_4.jpg')
nicole.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
nicole.save


selena = StarPart.new({
  name_of_star: "Selena Gomez",
  category: "head",
  description: "No need to paint them red, they are also beautiful when left natural",
  name_of_part: "lips",
  rating: rand(1..5),
  price: 3000,
  address: "Little Armenia Los Angeles, Californie, États-Unis"
})

selena.user_id = thibaud.id

file = URI.open('https://i0.wp.com/www.potins.net/wp-content/uploads/2019/07/selena-gomez-3840x2904-2019-4k-18008.jpg?resize=800%2C600&ssl=1')
selena.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
selena.save


vincent = StarPart.new({
  name_of_star: "Vincent Cassel",
  category: "bust",
  description: "Who has never dreamt of having these abs? But going to the gym… ugh, no, thanks!",
  name_of_part: "abs",
  rating: rand(1..5),
  price: 14000,
  address: "St Gervais 75004 Paris"
})

vincent.user_id = thibaud.id

file = URI.open('http://cdn01.cdn.justjared.com/wp-content/uploads/2013/04/cassel-speedo/vincent-cassel-shirtless-speedo-sexy-in-rio-08.jpg')
vincent.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
vincent.save


omar = StarPart.new({
  name_of_star: "Omar Sy",
  category: "head",
  description: "You WILL have fun just because of your smile",
  name_of_part: "smile",
  rating: rand(1..5),
  price: 28000,
  address: "Melrose Los Angeles, Californie, États-Unis"
})

omar.user_id = thibaud.id

file = URI.open('https://i0.wp.com/www.potins.net/wp-content/uploads/2015/04/1428987455-2787418a8c72a14f57b61bb16f238ef2.jpg?resize=800%2C600&ssl=1')
omar.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
omar.save



lady = StarPart.new({
  name_of_star: "Lady Gaga",
  category: "head",
  description: "Impress everyone with those fabulous eyebrows",
  name_of_part: "eyebrows",
  rating: rand(1..5),
  price: 2000,
  address: "Melrose Los Angeles, Californie, États-Unis"
})

lady.user_id = thibaud.id

file = URI.open('https://resize1-rfm.lanmedia.fr/r/665,444,forcex,center-middle/img/var/rfm/storage/images/news/lady-gaga-devoile-l-extrait-d-une-nouvelle-chanson-en-annoncant-sa-ligne-de-maquillage-16742/239669-1-fre-FR/Lady-Gaga-devoile-l-extrait-d-une-nouvelle-chanson-en-annoncant-sa-ligne-de-maquillage.jpg')
lady.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
lady.save


kendall = StarPart.new({
  name_of_star: "Kendall Jenner",
  category: "head",
  description: "Legs out!",
  name_of_part: "eyebrows",
  rating: rand(1..5),
  price: 32000,
  address: "Melrose Los Angeles, Californie, États-Unis"
})

kendall.user_id = thibaud.id

file = URI.open('https://i2.wp.com/metro.co.uk/wp-content/uploads/2019/02/sei_54014717-80e8.jpg?quality=90&strip=all&zoom=1&resize=644%2C967&ssl=1')
kendall.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
kendall.save

puts "Seeds thibaud done"

cristiano = StarPart.new({
  name_of_star: "Cristiano Ronaldo",
  category: "bust",
  description: "Who has never dreamt of having these abs? But going to the gym… ugh, no, thanks!",
  name_of_part: "abs",
  rating: rand(1..5),
  price: 42000,
  address: "Borgo Vittoria Turin, Italie"
})

cristiano.user_id = sergio.id

file = URI.open('https://www.abdosrapidement.com/wp-content/uploads/2018/04/cristiano-ronaldo-abdos.jpg')
cristiano.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
cristiano.save



lionel = StarPart.new({
  name_of_star: "Lionel Messi",
  category: "bottom",
  description: "You will kill the game with those legs",
  name_of_part: "legs",
  rating: rand(1..5),
  price: 99000,
  address: "C. d'Arístides Maillol, 12, 08028 Barcelona, Espagne"
})

lionel.user_id = sergio.id

file = URI.open('https://fearofbliss.files.wordpress.com/2010/08/x610-1.jpg')
lionel.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
lionel.save



serena = StarPart.new({
  name_of_star: "Serena Williams",
  category: "bust",
  description: "You will kill the game with those arms",
  name_of_part: "arms",
  rating: rand(1..5),
  price: 99000,
  address: "100-298 N Kenmore Ave Los Angeles, CA 90004, États-Unis"
})

serena.user_id = sergio.id

file = URI.open('https://imgix.bustle.com/uploads/getty/2018/5/31/52d307e6-1df5-4097-a826-b82cd06e3e91-getty-930223266.jpg')
serena.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
serena.save


maria = StarPart.new({
  name_of_star: "Maria Sharapova",
  category: "bust",
  description: "You will kill the game with those arms",
  name_of_part: "arms",
  rating: rand(1..5),
  price: 9000,
  address: "100-298 N Kenmore Ave Los Angeles, CA 90004, États-Unis"
})

maria.user_id = sergio.id

file = URI.open('https://gal.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fgal.2Fvar.2Fgal.2Fstorage.2Fimages.2Fmedia.2Fimages.2Factu.2Fphotos_on_ne_parle_que_de_ca.2Fsharapova_noir.2F270852-1-fre-FR.2Fsharapova_noir.2Ejpg/480x480/quality/80/maria-sharapova-n-ira-pas-aux-jo.jpg')
maria.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
maria.save


drake = StarPart.new({
  name_of_star: "Drake",
  category: "bust",
  description: "Who has never dreamt of having these abs? But going to the gym… ugh, no, thanks!",
  name_of_part: "bust",
  rating: rand(1..5),
  price: 9000,
  address: "1300 N Laurel Ave West Hollywood, CA 90046, États-Unis"
})

drake.user_id = sergio.id

file = URI.open('https://akns-images.eonline.com/eol_images/Entire_Site/2019416/rs_600x600-190516170515-600-drake-abs.jpg?fit=around|1200:1200&crop=1200:1200;center,top&output-quality=90')
drake.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
drake.save



dany = StarPart.new({
  name_of_star: "Dany Boon",
  category: "head",
  description: "Hein biloute?!",
  name_of_part: "ears",
  rating: rand(1..5),
  price: 900,
  address: "Lille-Centre Lille"
})

dany.user_id = sergio.id

file = URI.open('https://pbs.twimg.com/profile_images/560819943294246912/GQ0mVRWZ.jpeg')
dany.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
dany.save

puts "Seeds sergio done"


megan = StarPart.new({
  name_of_star: "Megan Fox",
  category: "head",
  description: "Beautiful blue eyes to match the color of the sea during your holidays at the beach!",
  name_of_part: "eyes",
  rating: rand(1..5),
  price: 16000,
  address: "District de Fairfax Los Angeles, Californie 90036, États-Unis"
})

megan.user_id = barbara.id

file = URI.open('https://static1.purepeople.com/articles/8/35/31/98/@/5059994-megan-fox-a-hollywood-en-2008-950x0-2.jpg')
megan.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
megan.save



charlize = StarPart.new({
  name_of_star: "Charlize Theron",
  category: "head",
  description: "Get those superb legs to be the queen of the beach",
  name_of_part: "legs",
  rating: rand(1..5),
  price: 32000,
  address: "Matroosfontein Le Cap, 7490, Afrique du Sud"
})

charlize.user_id = barbara.id

file = URI.open('https://66.media.tumblr.com/cc43b387bba91c493143dcae31aed0a2/tumblr_pjbs93vQck1uexn5b_540.jpg')
charlize.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
charlize.save


taylor = StarPart.new({
  name_of_star: "Taylor Swift",
  category: "head",
  description: "Beautiful blue eyes to match the color of the sea during your holidays at the beach!",
  name_of_part: "eyes",
  rating: rand(1..5),
  price: 4000,
  address: "600-670 N Formosa Ave Los Angeles, CA 90036, États-Unis"
})

taylor.user_id = barbara.id

file = URI.open('http://fr.web.img6.acsta.net/c_215_290/pictures/19/08/27/09/51/3618586.jpg')
taylor.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
taylor.save



justin = StarPart.new({
  name_of_star: "Justin Bieber",
  category: "bust",
  description: "Who has never dreamt of having these abs? But going to the gym… ugh, no, thanks!",
  name_of_part: "abs",
  rating: rand(1..5),
  price: 3000,
  address: "600-670 N Formosa Ave Los Angeles, CA 90036, États-Unis"
})

justin.user_id = barbara.id

file = URI.open('https://i.pinimg.com/originals/d3/28/3d/d3283d4f43dc97d08bb12f5b201c984b.jpg')
justin.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
justin.save



tom = StarPart.new({
  name_of_star: "Tom Cruise",
  category: "head",
  description: "What a smile, they will say…",
  name_of_part: "smile",
  rating: rand(1..5),
  price: 8000,
  address: "8075 Melrose Ave Los Angeles, CA 90046, États-Unis"
})

tom.user_id = barbara.id

file = URI.open('https://cbsnews2.cbsistatic.com/hub/i/r/2008/12/16/585e2791-a642-11e2-a3f0-029118418759/resize/620x465/a17e92e4271d3bbae1903eec8273f537/image4672053.jpg')
tom.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
tom.save


marion = StarPart.new({
  name_of_star: "Marion Cotillard",
  category: "head",
  description: "Beautiful blue eyes to match the color of the sea during your holidays at the beach!",
  name_of_part: "eyes",
  rating: rand(1..5),
  price: 12000,
  address: "8075 Melrose Ave Los Angeles, CA 90046, États-Unis"
})

marion.user_id = barbara.id

file = URI.open('https://static1.puretrend.com/articles/6/80/67/6/@/929701-sd-580x0-1.jpg')
marion.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
marion.save

puts "Seeds barbara done"


natalie = StarPart.new({
  name_of_star: "Natalie Portman",
  category: "head",
  description: "What a smile, they will say…",
  name_of_part: "smile",
  rating: rand(1..5),
  price: 14000,
  address: "Sainte-Avoye Paris"
})

natalie.user_id = helene.id

file = URI.open('http://fr.web.img5.acsta.net/pictures/19/09/27/11/45/1268191.jpg')
natalie.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
natalie.save



angelina = StarPart.new({
  name_of_star: "Angelina Jolie",
  category: "head",
  description: "Imagine the kisses you'll give with those lips. You'll even want to kiss yourself",
  name_of_part: "lips",
  rating: rand(1..5),
  price: 8000,
  address: "599-501 N Alta Vista Blvd Los Angeles, CA 90036, États-Unis"
})

angelina.user_id = helene.id

file = URI.open('https://149351455.v2.pressablecdn.com/wp-content/uploads/2016/09/angelina-jolie-lips-d4a8f.jpg')
angelina.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
angelina.save



dwayne = StarPart.new({
  name_of_star: "Dwayne Johnson",
  category: "bust",
  description: "Who has never dreamt of having these abs? But going to the gym… ugh, no, thanks!",
  name_of_part: "abs",
  rating: rand(1..5),
  price: 8000,
  address: "599-501 N Alta Vista Blvd Los Angeles, CA 90036, États-Unis"
})

dwayne.user_id = helene.id

file = URI.open('https://www.glamourparis.com/uploads/images/thumbs/201810/f5/razzie_awards_2018___dwayne_johnson_accepte_avec_humour_son_prix_4853.jpeg_north_414x736_transparent.jpg')
dwayne.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
dwayne.save




romain = StarPart.new({
  name_of_star: "Romain Duris",
  category: "head",
  description: "What a smile, they will say…",
  name_of_part: "smile",
  rating: rand(1..5),
  price: 12000,
  address: "Saint-Merri 75004 Paris"
})

romain.user_id = helene.id

file = URI.open('https://adaptationmagazine.com/wp-content/uploads/2017/10/Romain_Duris_66e%CC%80me_Festival_de_Venise_9-1200x799.jpg')
romain.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
romain.save



francois = StarPart.new({
  name_of_star: "François Civil",
  category: "head",
  description: "No bad hair day anymore… and you don't even have to buy a wig!",
  name_of_part: "hair",
  rating: rand(1..5),
  price: 3000,
  address: "Oberkampf 75011 Paris"
})

francois.user_id = helene.id

file = URI.open('http://fr.web.img5.acsta.net/pictures/19/01/23/20/53/2636714.jpg')
francois.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
francois.save




jean = StarPart.new({
  name_of_star: "Jean Dujardin",
  category: "head",
  description: "What a smile, all the girls will say…",
  name_of_part: "smile",
  rating: rand(1..5),
  price: 3000,
  address: "Cour Damoye 75011 Paris"
})

jean.user_id = helene.id

file = URI.open('https://i.pinimg.com/originals/33/8d/63/338d639d61cf274dd6be2bff1e40472c.jpg')
jean.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jean.save


puts "Seeds helene done"


puts "seeds booking tanguy starts"
Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: jason.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 9, 26),
  end_date: Time.new(2020, 10, 2),
  user_id: tanguy.id,
  star_part_id: nicole.id,
  confirmed: "Pending"
)
Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: cristiano.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: megan.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: natalie.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: adriana.id,
  confirmed: "Accepted"
)
puts "seeds booking tanguy done!"
puts "seeds booking ade starts"
Booking.create!(
  start_date: Time.new(2019, 9, 28),
  end_date: Time.new(2019, 9, 30),
  user_id: adelaide.id,
  star_part_id: cardi.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 28),
  end_date: Time.new(2019, 9, 30),
  user_id: adelaide.id,
  star_part_id: beyonce.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 28),
  end_date: Time.new(2019, 9, 30),
  user_id: adelaide.id,
  star_part_id: selena.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 9, 28),
  end_date: Time.new(2020, 9, 30),
  user_id: adelaide.id,
  star_part_id: lionel.id,
  confirmed: "Declined"
)
Booking.create!(
  start_date: Time.new(2020, 9, 28),
  end_date: Time.new(2020, 9, 30),
  user_id: adelaide.id,
  star_part_id: charlize.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 9, 28),
  end_date: Time.new(2020, 9, 30),
  user_id: adelaide.id,
  star_part_id: angelina.id,
  confirmed: "Accepted"
)
puts "seeds booking ade done!"
puts "seeds booking thibaud starts"
Booking.create!(
  start_date: Time.new(2019, 10, 03),
  end_date: Time.new(2019, 10, 5),
  user_id: thibaud.id,
  star_part_id: kim.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 10, 03),
  end_date: Time.new(2019, 10, 5),
  user_id: thibaud.id,
  star_part_id: al.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 10, 03),
  end_date: Time.new(2019, 10, 5),
  user_id: thibaud.id,
  star_part_id: serena.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 10, 03),
  end_date: Time.new(2019, 10, 5),
  user_id: thibaud.id,
  star_part_id: taylor.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 10, 03),
  end_date: Time.new(2020, 10, 5),
  user_id: thibaud.id,
  star_part_id: dwayne.id,
  confirmed: "Declined"
)
Booking.create!(
  start_date: Time.new(2020, 10, 03),
  end_date: Time.new(2020, 10, 5),
  user_id: thibaud.id,
  star_part_id: maria.id,
  confirmed: "Pending"
)
puts "seeds booking thibaud done!"
puts "seeds booking sergio starts"
Booking.create!(
  start_date: Time.new(2019, 9, 30),
  end_date: Time.new(2019, 10, 3),
  user_id: sergio.id,
  star_part_id: scarlett.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 30),
  end_date: Time.new(2019, 10, 3),
  user_id: sergio.id,
  star_part_id: robert.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 30),
  end_date: Time.new(2019, 10, 3),
  user_id: sergio.id,
  star_part_id: omar.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 9, 30),
  end_date: Time.new(2020, 10, 3),
  user_id: sergio.id,
  star_part_id: vincent.id,
  confirmed: "Pending"
)
Booking.create!(
  start_date: Time.new(2020, 9, 30),
  end_date: Time.new(2020, 10, 3),
  user_id: sergio.id,
  star_part_id: justin.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 9, 30),
  end_date: Time.new(2020, 10, 3),
  user_id: sergio.id,
  star_part_id: romain.id,
  confirmed: "Pending"
)
puts "seeds booking sergio done!"
puts "seeds booking barbara starts"
Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: lebron.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: johnny.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: lady.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: drake.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: francois.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: jean.id,
  confirmed: "Accepted"
)
puts "seeds booking barbara done!"
puts "seeds booking helene starts"
Booking.create!(
  start_date: Time.new(2020, 9, 30),
  end_date: Time.new(2020, 10, 3),
  user_id: helene.id,
  star_part_id: gad.id,
  confirmed: "Declined"
)
Booking.create!(
  start_date: Time.new(2019, 9, 30),
  end_date: Time.new(2019, 10,3),
  user_id: helene.id,
  star_part_id: bradley.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 30),
  end_date: Time.new(2019, 10, 3),
  user_id: helene.id,
  star_part_id: kendall.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2019, 9, 30),
  end_date: Time.new(2019, 10, 3),
  user_id: helene.id,
  star_part_id: dany.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 9, 30),
  end_date: Time.new(2020, 10, 3),
  user_id: helene.id,
  star_part_id: marion.id,
  confirmed: "Accepted"
)
Booking.create!(
  start_date: Time.new(2020, 9, 30),
  end_date: Time.new(2020, 10, 3),
  user_id: helene.id,
  star_part_id: tom.id,
  confirmed: "Declined"
)
puts "seeds booking helene done!"
puts "seeds reviews tanguy starts"

Review.create!(
  content: "Amazing, so good !",
  rating: 4,
  booking_id: jason.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "I loved it",
  rating: 4,
  booking_id: nicole.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "Not as good as in the picture",
  rating: 2,
  booking_id: cristiano.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "So good !",
  rating: 5,
  booking_id: megan.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "yeah bro, I win !",
  rating: 4,
  booking_id: natalie.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: adriana.id,
  user_id: tanguy.id,
)
puts "seeds reviews tanguy done"
puts "seeds reviews ade starts"
Review.create!(
  content: "this was great !",
  rating: 4,
  booking_id: cardi.id,
  user_id: adelaide.id,
)
Review.create!(
  content: "Beautiful !",
  rating: 4,
  booking_id: beyonce.id,
  user_id: adelaide.id,
)
Review.create!(
  content: "nice one",
  rating: 3,
  booking_id: selena.id,
  user_id: adelaide.id,
)
Review.create!(
  content: "Great so happy !",
  rating: 4,
  booking_id: lionel.id,
  user_id: adelaide.id,
)
Review.create!(
  content: "So happy this was amazing !",
  rating: 5,
  booking_id: charlize.id,
  user_id: adelaide.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: angelina.id,
  user_id: adelaide.id,
)
puts "seeds reviews ade done"
puts "seeds reviews thibaud starts"
Review.create!(
  content: "Gorgeous !",
  rating: 5,
  booking_id: kim.id,
  user_id: thibaud.id,
)
Review.create!(
  content: "nice ! i'm so happy now !",
  rating: 5,
  booking_id: al.id,
  user_id: thibaud.id,
)
Review.create!(
  content: "not as cool as I thought",
  rating: 2,
  booking_id: serena.id,
  user_id: thibaud.id,
)
Review.create!(
  content: "So fun !",
  rating: 4,
  booking_id: taylor.id,
  user_id: thibaud.id,
)
Review.create!(
  content: "i'm really happy with it !",
  rating: 4,
  booking_id: dwayne.id,
  user_id: thibaud.id,
)
Review.create!(
  content: "oh yeah !",
  rating: 4,
  booking_id: maria.id,
  user_id: thibaud.id,
)
puts "seeds reviews thibaud done"
puts "seeds reviews sergio starts"
Review.create!(
  content: "I'm so powerful !",
  rating: 4,
  booking_id: scarlett.id,
  user_id: sergio.id,
)
Review.create!(
  content: "yeah !",
  rating: 3,
  booking_id: robert.id,
  user_id: sergio.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: vincent.id,
  user_id: sergio.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: omar.id,
  user_id: sergio.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: justin.id,
  user_id: sergio.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: romain.id,
  user_id: sergio.id,
)
puts "seeds reviews sergio done"
puts "seeds reviews barbara starts"
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: lebron.id,
  user_id: barbara.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: johnny.id,
  user_id: barbara.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: lady.id,
  user_id: barbara.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: drake.id,
  user_id: barbara.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: francois.id,
  user_id: barbara.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: jean.id,
  user_id: barbara.id,
)
puts "seeds reviews barbara done"
puts "seeds reviews helene starts"
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: gad.id,
  user_id: helene.id,
)
Review.create!(
  content: "So sexy !",
  rating: 5,
  booking_id: bradley.id,
  user_id: helene.id,
)
Review.create!(
  content: "So sexy !",
  rating: 5,
  booking_id: kendall.id,
  user_id: helene.id,
)
Review.create!(
  content: "I was so strong !",
  rating: 3,
  booking_id: dany.id,
  user_id: helene.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: marion.id,
  user_id: helene.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: tom.id,
  user_id: helene.id,
)
puts "seeds reviews helene done"



puts "Seeds finished"



