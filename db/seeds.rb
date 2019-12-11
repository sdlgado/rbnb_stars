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
file = URI.open('https://images.unsplash.com/photo-1549068106-b024baf5062d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
tanguy.photo.attach(io: file, filename: 'tanguy-image.jpg', content_type: 'image/jpg')
tanguy.save

adelaide = User.new({
  username: "Adelaide",
  first_name: "Adelaide",
  last_name: "Blot",
  email: "adelaide.blot@gmail.com",
  password: "azerty"
  })
file = URI.open('https://images.unsplash.com/photo-1566807810030-3eaa60f3e670?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
adelaide.photo.attach(io: file, filename: 'ade-image.jpg', content_type: 'image/jpg')
adelaide.save

thibaud = User.new({
  username: "Thibaud",
  first_name: "Thibaud",
  last_name: "Allain",
  email: "thibaud.allain@gmail.com",
  password: "azerty"
  })
file = URI.open('https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80')
thibaud.photo.attach(io: file, filename: 'thibaud-image.jpg', content_type: 'image/jpg')
thibaud.save

barbara = User.new({
  username: "Barbara",
  first_name: "Barbara",
  last_name: "Dupont",
  email: "barbara.dupont@gmail.com",
  password: "azerty"
  })
file = URI.open('https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
barbara.photo.attach(io: file, filename: 'barbara-image.jpg', content_type: 'image/jpg')
barbara.save


####################################################################
puts "End of User seed"
puts "Starting Stars seed"
####################################################################

cardi = StarPart.new({
  name_of_star: "Coconut beach",
  category: "sand",
  description: "Place a hamock underneath a coconut tree, you won't be disappointed!",
  rating: rand(1..5),
  price: 90000,
  address: "1741-1701 N Las Palmas Ave
  Los Angeles, CA 90028, États-Unis"
})

cardi.user_id = tanguy.id

file = URI.open('https://images.unsplash.com/photo-1509233725247-49e657c54213?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=987&q=80')
cardi.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
cardi.save


beyonce = StarPart.new({
  name_of_star: "Plage de sable blanc",
  category: "sand",
  description: "Magnificient beach. You'll be on your own",
  rating: rand(1..5),
  price: 90000,
  address: "2100-2154 Canyon Dr Los Angeles, CA 90068 États-Unis"
})

beyonce.user_id = tanguy.id

file = URI.open('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2106&q=80')
beyonce.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
beyonce.save

kim = StarPart.new({
  name_of_star: "Beach resort",
  category: "sand",
  description: "What do you need more than a house beach for your holidays?",
  rating: rand(1..5),
  price: 30000,
  address: "1025 N Fairfax Ave West Hollywood, CA 90046, États-Unis"
})

kim.user_id = tanguy.id

file = URI.open('https://images.unsplash.com/photo-1495954484750-af469f2f9be5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
kim.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
kim.save


scarlett = StarPart.new({
  name_of_star: "Banc de sable",
  category: "tree",
  description: "Rent this amazing isolated sandbeach",
  rating: rand(1..5),
  price: 50000,
  address: "936 N Formosa Ave Los Angeles, CA 90046, États-Unis"
})
scarlett.user_id = tanguy.id

file = URI.open('https://images.unsplash.com/photo-1505142468610-359e7d316be0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=881&q=80')
scarlett.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
scarlett.save


lebron = StarPart.new({
  name_of_star: "Turquoise sea beach",
  category: "tree",
  description: "Amazingly water you'll be willing to dive in.",
  rating: rand(1..5),
  price: 20000,
  address: "Little Havana Miami, Floride, États-Unis"
})

lebron.user_id = tanguy.id

file = URI.open('https://images.unsplash.com/photo-1506953823976-52e1fdc0149a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')
lebron.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
lebron.save


gad = StarPart.new({
  name_of_star: "James Bond's beach",
  category: "sea",
  description: "Remember Daniel Craig coming out of the water? It was on this beach.",
  rating: rand(1..5),
  price: 6000,
  address: "48 rue du Louvre, Paris"
})

gad.user_id = tanguy.id

file = URI.open('https://images.unsplash.com/photo-1496737018672-b1a6be2e949c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2691&q=80')
gad.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
gad.save

puts "Seeds tanguy done"

######################################################


jason = StarPart.new({
  name_of_star: "Perfect family beach",
  category: "tree",
  description: "You'll have plenty of space on this sand beach for you and your family and friends.",
  rating: rand(1..5),
  price: 10000,
  address: "900-1000 Crescent Heights Blvd Los Angeles, CA 90046, États-Unis"
})

jason.user_id = adelaide.id

file = URI.open('https://images.unsplash.com/photo-1525183995014-bd94c0750cd5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')
jason.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jason.save


adriana = StarPart.new({
  name_of_star: "Playa Palmera",
  category: "sand",
  description: "Here we focus on our choice of coconuttree to guarantee the best seeds are planted.",
  rating: rand(1..5),
  price: 100000,
  address: "Camaçari Bahia, Brésil"
})

adriana.user_id = adelaide.id

file = URI.open('https://images.unsplash.com/photo-1454391304352-2bf4678b1a7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
adriana.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
adriana.save


al = StarPart.new({
  name_of_star: "Focus on the essential",
  category: "sea",
  description: "We have white sand and blue water. What else do you need?",
  rating: rand(1..5),
  price: 5000,
  address: "6767 Hollywood Blvd Los Angeles, CA 90028, États-Unis"
})

al.user_id = adelaide.id

file = URI.open('https://images.unsplash.com/photo-1504321946642-8f661bf96ff0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
al.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
al.save


robert = StarPart.new({
  name_of_star: "Beach Peer",
  category: "sea",
  description: "Nothing to worry about here...",
  rating: rand(1..5),
  price: 3000,
  address: "7198-7150 Waring Ave Los Angeles, CA 90046, États-Unis"
})

robert.user_id = adelaide.id

file = URI.open('https://images.unsplash.com/photo-1534570122623-99e8378a9aa7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
robert.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
robert.save


johnny = StarPart.new({
  name_of_star: "Beach Surf",
  category: "sea",
  description: "Perfect for beginners.",
  rating: rand(1..5),
  price: 6000,
  address: "1016 Cole Ave Los Angeles, CA 90038, États-Unis"
})

johnny.user_id = adelaide.id

file = URI.open('https://images.unsplash.com/photo-1529420705456-5c7e04dd043d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80')
johnny.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
johnny.save


bradley = StarPart.new({
  name_of_star: "Boaty Beach",
  category: "sea",
  description: "Wonderful place to learn fishing.",
  rating: rand(1..5),
  price: 12000,
  address: "645 N Ardmore Ave Los Angeles, CA 90004, États-Unis"
})

bradley.user_id = adelaide.id

file = URI.open('https://images.unsplash.com/photo-1506929562872-bb421503ef21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1304&q=80')
bradley.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bradley.save

puts "Seeds adelaide done"

###########################################################@

nicole = StarPart.new({
  name_of_star: "Underwater Marvellous",
  category: "sea",
  description: "Anyone fond of snorkling?",
  rating: rand(1..5),
  price: 9000,
  address: "West Hollywood Californie, États-Unis"
})

nicole.user_id = thibaud.id

file = URI.open('https://images.unsplash.com/photo-1437719417032-8595fd9e9dc6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80')
nicole.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
nicole.save


selena = StarPart.new({
  name_of_star: "Secret Beach",
  category: "sea",
  description: "Amazing to find such a nice place here",
  rating: rand(1..5),
  price: 3000,
  address: "Little Armenia Los Angeles, Californie, États-Unis"
})

selena.user_id = thibaud.id

file = URI.open('https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
selena.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
selena.save


vincent = StarPart.new({
  name_of_star: "Wonderfully sunny",
  category: "tree",
  description: "No matter the time of year, you'll need sunglasses.",
  rating: rand(1..5),
  price: 14000,
  address: "St Gervais 75004 Paris"
})

vincent.user_id = thibaud.id

file = URI.open('https://images.unsplash.com/photo-1487349384428-12b47aca925e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80')
vincent.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
vincent.save


omar = StarPart.new({
  name_of_star: "Very nice beach",
  category: "sea",
  description: "Fantastically simple.",
  rating: rand(1..5),
  price: 28000,
  address: "Melrose Los Angeles, Californie, États-Unis"
})

omar.user_id = thibaud.id

file = URI.open('https://images.unsplash.com/photo-1491378630646-3440efa57c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
omar.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
omar.save



lady = StarPart.new({
  name_of_star: "Playa de surf",
  category: "sea",
  description: "Get ready to paddle to the lineup.",
  rating: rand(1..5),
  price: 2000,
  address: "Melrose Los Angeles, Californie, États-Unis"
})

lady.user_id = thibaud.id

file = URI.open('https://images.unsplash.com/photo-1503756234508-e32369269deb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')
lady.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
lady.save


kendall = StarPart.new({
  name_of_star: "Ecoresort",
  category: "sea",
  description: "Improving the quality of living since 1996.",
  rating: rand(1..5),
  price: 32000,
  address: "Melrose Los Angeles, Californie, États-Unis"
})

kendall.user_id = thibaud.id

file = URI.open('https://images.unsplash.com/photo-1538964173425-93884d739596?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')
kendall.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
kendall.save

puts "Seeds thibaud done"

###########################################################@

megan = StarPart.new({
  name_of_star: "Isolated sand beach",
  category: "sea",
  description: "Very nice for your honey moon.",
  rating: rand(1..5),
  price: 16000,
  address: "District de Fairfax Los Angeles, Californie 90036, États-Unis"
})

megan.user_id = barbara.id

file = URI.open('https://images.unsplash.com/photo-1520454974749-611b7248ffdb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
megan.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
megan.save



charlize = StarPart.new({
  name_of_star: "Summer resort",
  category: "sea",
  description: "Slightly crowded but you'll love it.",
  rating: rand(1..5),
  price: 32000,
  address: "Matroosfontein Le Cap, 7490, Afrique du Sud"
})

charlize.user_id = barbara.id

file = URI.open('https://images.unsplash.com/photo-1488462237308-ecaa28b729d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=908&q=80')
charlize.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
charlize.save


taylor = StarPart.new({
  name_of_star: "Sunset love",
  category: "sea",
  description: "Best place to make your proposal.",
  rating: rand(1..5),
  price: 4000,
  address: "600-670 N Formosa Ave Los Angeles, CA 90036, États-Unis"
})

taylor.user_id = barbara.id

file = URI.open('https://images.unsplash.com/photo-1506477331477-33d5d8b3dc85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=974&q=80')
taylor.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
taylor.save



justin = StarPart.new({
  name_of_star: "Utopia",
  category: "tree",
  description: "This beach looks unreal.",
  rating: rand(1..5),
  price: 3000,
  address: "600-670 N Formosa Ave Los Angeles, CA 90036, États-Unis"
})

justin.user_id = barbara.id

file = URI.open('https://images.unsplash.com/photo-1523538290088-51e3e7d1c00d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80')
justin.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
justin.save



tom = StarPart.new({
  name_of_star: "Hut on the beach",
  category: "sea",
  description: "Fed up with NY's rush? Come rest here.",
  rating: rand(1..5),
  price: 8000,
  address: "8075 Melrose Ave Los Angeles, CA 90046, États-Unis"
})

tom.user_id = barbara.id

file = URI.open('https://images.unsplash.com/photo-1505228395891-9a51e7e86bf6?ixlib=rb-1.2.1&auto=format&fit=crop&w=2690&q=80')
tom.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
tom.save


marion = StarPart.new({
  name_of_star: "Sailors paradise",
  category: "sea",
  description: "It's time to put your swimsuit and hop on a boat.",
  rating: rand(1..5),
  price: 12000,
  address: "8075 Melrose Ave Los Angeles, CA 90046, États-Unis"
})

marion.user_id = barbara.id

file = URI.open('https://images.unsplash.com/photo-1519046904884-53103b34b206?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
marion.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
marion.save

puts "Seeds barbara done"

puts "seeds booking tanguy starts"

a = Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: jason.id,
  confirmed: "Accepted"
)
b = Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: nicole.id,
  confirmed: "Pending"
)
c = Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: megan.id,
  confirmed: "Accepted"
)
d = Booking.create!(
  start_date: Time.new(2019, 9, 26),
  end_date: Time.new(2019, 10, 2),
  user_id: tanguy.id,
  star_part_id: adriana.id,
  confirmed: "Accepted"
)

Review.create!(
  content: "Amazing, so good !",
  rating: 4,
  booking_id: a.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "I loved it",
  rating: 4,
  booking_id: b.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "So good !",
  rating: 5,
  booking_id: c.id,
  user_id: tanguy.id,
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: d.id,
  user_id: tanguy.id,
)
puts "seeds booking tanguy done!"
puts "seeds booking ade starts"
a = Booking.create!(
  start_date: Time.new(2019, 9, 28),
  end_date: Time.new(2019, 9, 30),
  user_id: adelaide.id,
  star_part_id: cardi.id,
  confirmed: "Accepted"
)
a = Booking.create!(
  start_date: Time.new(2019, 9, 28),
  end_date: Time.new(2019, 9, 30),
  user_id: adelaide.id,
  star_part_id: beyonce.id,
  confirmed: "Accepted"
)
Review.create!(
  content: "this was great !",
  rating: 4,
  booking_id: a.id,
  user_id: adelaide.id,
)
a = Booking.create!(
  start_date: Time.new(2019, 9, 28),
  end_date: Time.new(2019, 9, 30),
  user_id: adelaide.id,
  star_part_id: selena.id,
  confirmed: "Accepted"
)
Review.create!(
  content: "Beautiful !",
  rating: 4,
  booking_id: a.id,
  user_id: adelaide.id,
)
a = Booking.create!(
  start_date: Time.new(2019, 9, 28),
  end_date: Time.new(2019, 9, 30),
  user_id: adelaide.id,
  star_part_id: charlize.id,
  confirmed: "Accepted"
)

Review.create!(
  content: "nice one",
  rating: 3,
  booking_id: a.id,
  user_id: adelaide.id,
)
puts "seeds booking ade done!"
puts "seeds booking thibaud starts"
a = Booking.create!(
  start_date: Time.new(2019, 10, 03),
  end_date: Time.new(2019, 10, 5),
  user_id: thibaud.id,
  star_part_id: kim.id,
  confirmed: "Accepted"
)
Review.create!(
  content: "Gorgeous !",
  rating: 5,
  booking_id: a.id,
  user_id: thibaud.id,
)
a = Booking.create!(
  start_date: Time.new(2019, 10, 03),
  end_date: Time.new(2019, 10, 5),
  user_id: thibaud.id,
  star_part_id: al.id,
  confirmed: "Accepted"
)
Review.create!(
  content: "nice ! i'm so happy now !",
  rating: 5,
  booking_id: a.id,
  user_id: thibaud.id,
)
a = Booking.create!(
  start_date: Time.new(2019, 10, 03),
  end_date: Time.new(2019, 10, 5),
  user_id: thibaud.id,
  star_part_id: taylor.id,
  confirmed: "Accepted"
)
Review.create!(
  content: "So fun !",
  rating: 4,
  booking_id: a.id,
  user_id: thibaud.id,
)
puts "seeds booking thibaud done!"

puts "seeds booking barbara starts"
a = Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: lebron.id,
  confirmed: "Accepted"
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: a.id,
  user_id: barbara.id,
)
a = Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: johnny.id,
  confirmed: "Accepted"
)
Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: a.id,
  user_id: barbara.id,
)
a = Booking.create!(
  start_date: Time.new(2019, 9, 29),
  end_date: Time.new(2019, 10, 1),
  user_id: barbara.id,
  star_part_id: lady.id,
  confirmed: "Accepted"
)

Review.create!(
  content: "this was cool !",
  rating: 3,
  booking_id: a.id,
  user_id: barbara.id,
)




puts "Seeds finished"



