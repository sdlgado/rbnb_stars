# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tanguy = User.create!({
  username: "Tanguy",
  first_name: "Tanguy",
  last_name: "Blondiaux",
  email: "tanguy.blondiaux@gmail.com",
  password: "azerty"
  })

sergio = User.create!({
  username: "Sergio",
  first_name: "Sergio",
  last_name: "Delgado",
  email: "sergio.delgado@gmail.com",
  password: "azerty"
  })

adelaide = User.create!({
  username: "Adelaide",
  first_name: "Adelaide",
  last_name: "Blot",
  email: "adelaide.blot@gmail.com",
  password: "azerty"
  })

thibaud = User.create!({
  username: "Thibaud",
  first_name: "Thibaud",
  last_name: "Allain",
  email: "thibaud.allain@gmail.com",
  password: "azerty"
  })

StarPart.create!({
  name_of_star: "Robert Downey Jr.",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "hair",
  rating: 4,
  price: 300,
  user: tanguy
})

StarPart.create!({
  name_of_star: "Al Pacino",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "moustache",
  rating: 4,
  price: 500,
  user: tanguy
})

StarPart.create!({
  name_of_star: "Adriana Lima",
  category: "bottom",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "legs",
  rating: 4,
  price: 500,
  user: tanguy
})

StarPart.create!({
  name_of_star: "Bad Bunny",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "teeth",
  rating: 3,
  price: 1000,
  user: adelaide
})

StarPart.create!({
  name_of_star: "Nicki Minaj",
  category: "bottom",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "ass",
  rating: 5,
  price: 10000,
  user: adelaide
})

StarPart.create!({
  name_of_star: "Jason Statham",
  category: "bust",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "abs",
  rating: 5,
  price: 10000,
  user: thibaud
})

StarPart.create!({
  name_of_star: "Gad Elmaleh",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "eyes",
  rating: 5,
  price: 6000,
  user: thibaud
})

StarPart.create!({
  name_of_star: "Angelina Jolie",
  category: "head",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "libs",
  rating: 5,
  price: 8000,
  user: adelaide
})

StarPart.create!({
  name_of_star: "LeBron James",
  category: "bust",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "arms",
  rating: 4,
  price: 20000,
  user: sergio
})

StarPart.create!({
  name_of_star: "Scarlett Johansson",
  category: "bust",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  name_of_part: "breasts",
  rating: 5,
  price: 50000,
  user: thibaud
})



