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

tanguy = User.new({
  username: "Tanguy",
  first_name: "Tanguy",
  last_name: "Blondiaux",
  email: "tanguy.blondiaux@gmail.com",
  password: "azerty"

  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/Tanguy75')
tanguy.photo.attach(io: file, filename: 'tanguy-image.jpg', content_type: 'image/jpg')
tanguy.save

sergio = User.new({
  username: "Sergio",
  first_name: "Sergio",
  last_name: "Delgado",
  email: "sergio.delgado@gmail.com",
  password: "azerty"
  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/Tanguy75')
sergio.photo.attach(io: file, filename: 'sergio-image.jpg', content_type: 'image/jpg')
sergio.save

adelaide = User.new({
  username: "Adelaide",
  first_name: "Adelaide",
  last_name: "Blot",
  email: "adelaide.blot@gmail.com",
  password: "azerty"
  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/AdelaideEurope')
adelaide.photo.attach(io: file, filename: 'ade-image.jpg', content_type: 'image/jpg')
adelaide.save

thibaud = User.new({
  username: "Thibaud",
  first_name: "Thibaud",
  last_name: "Allain",
  email: "thibaud.allain@gmail.com",
  password: "azerty"
  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/AdelaideEurope')
thibaud.photo.attach(io: file, filename: 'ade-image.jpg', content_type: 'image/jpg')
thibaud.save

rdj = StarPart.new({
  name_of_star: "Robert Downey Jr.",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "hair",
  rating: 4,
  price: 3000
})

rdj.user_id = tanguy.id

file = URI.open('https://pmcvariety.files.wordpress.com/2017/03/robert-downey-jr1.jpg?w=1000')
rdj.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
rdj.save

alpacino = StarPart.new({
  name_of_star: "Al Pacino",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "moustache",
  rating: 4,
  price: 5000
})

alpacino.user_id = tanguy.id

file = URI.open('http://www.gstatic.com/tv/thumb/persons/2657/2657_v9_ba.jpg')
alpacino.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
alpacino.save

adriana = StarPart.new({
  name_of_star: "Adriana Lima",
  category: "bottom",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "legs",
  rating: 4,
  price: 100000
})

adriana.user_id = tanguy.id

file = URI.open('https://timedotcom.files.wordpress.com/2016/11/adriana-lima-victorias-secret-show.jpg')
adriana.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
adriana.save

badbunny = StarPart.new({
  name_of_star: "Bad Bunny",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "teeth",
  rating: 3,
  price: 1000,
})

badbunny.user_id = adelaide.id

file = URI.open('https://www.billboard.com/files/styles/article_main_image/public/media/bad-bunny-press-new-2019-billboard-1548.jpg')
badbunny.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
badbunny.save

niki = StarPart.new({
  name_of_star: "Nicki Minaj",
  category: "bottom",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "ass",
  rating: 5,
  price: 10000
})

niki.user_id = adelaide.id

file = URI.open('https://thegrio.com/wp-content/uploads/2019/08/NKGettyImages-1147440912-1.jpg')
niki.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
niki.save

jason = StarPart.new({
  name_of_star: "Jason Statham",
  category: "bust",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "abs",
  rating: 5,
  price: 10000
})

jason.user_id = thibaud.id

file = URI.open('https://images.indianexpress.com/2018/04/jason-statham-759.jpg?w=759')
jason.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jason.save

gad = StarPart.new({
  name_of_star: "Gad Elmaleh",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "eyes",
  rating: 5,
  price: 6000
})

gad.user_id = thibaud.id

file = URI.open('https://resize-parismatch.lanmedia.fr/img/var/news/storage/images/paris-match/people-a-z/gad-elmaleh/5995182-7-fre-FR/Gad-Elmaleh.jpg')
gad.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
gad.save

jolie = StarPart.new({
  name_of_star: "Angelina Jolie",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "libs",
  rating: 5,
  price: 8000
})

jolie.user_id = adelaide.id

file = URI.open('https://resizing.flixster.com/dw4wOkaagNRyWUqbRCvm3I4701I=/1778x1920/v1.cjs0OTA3MztqOzE4MjI1OzEyMDA7MTc3ODsxOTIw')
jolie.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jolie.save

lebron = StarPart.new({
  name_of_star: "LeBron James",
  category: "bust",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "arms",
  rating: 4,
  price: 20000
})

lebron.user_id = sergio.id

file = URI.open('https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/1966.png')
lebron.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
lebron.save

scarlett = StarPart.new({
  name_of_star: "Scarlett Johansson",
  category: "bust",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "breasts",
  rating: 5,
  price: 50000
})
scarlett.user_id = thibaud.id

file = URI.open('https://s1.r29static.com/bin/entry/cf2/720x864,85/2220755/image.webp')
scarlett.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
scarlett.save

Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: thibaud.id,
  star_part_id: scarlett.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: sergio.id,
  star_part_id: gad.id
  )

Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: adelaide.id,
  star_part_id: jolie.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: sergio.id,
  star_part_id: alpacino.id
  )

Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: tanguy.id,
  star_part_id: jason.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: thibaud.id,
  star_part_id: niki.id
  )

Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: thibaud.id,
  star_part_id: adriana.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: adelaide.id,
  star_part_id: jason.id
  )

puts "Seeds finished"



