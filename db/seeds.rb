# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Wiping database..."
Booking.destroy_all
Grandparent.destroy_all
User.destroy_all
puts "Database wiped!"
puts "---------------"
puts "Seeding..."
puts "---------------"
puts "Creating fake user..."
user = User.new
user.email = 'admin@lewagon.com'
user.password = 'password'
user.admin = true
user.save
puts "---------------"
puts "User Details: "
puts "Email: #{user.email}"
puts "Password: #{user.password}"
puts "---------------"

puts "Creating grandparents..."

grandparent = Grandparent.new(
  name: 'Roger Billingsworth',
  location: "Richmond, Melbourne",
  interest: 'Mobile games, Looking surprised, V-neck sweaters',
  description: 'I would love to share some wisdom with the youth of today!',
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://www.smithlifehomecare.com/wp-content/uploads/2020/08/Challenges-of-elderly-smaller.png",
  user_id: user.id,
  monday: true,
  tuesday: true,
  wednesday: false,
  thursday: false,
  friday: true,
  saturday: false,
  sunday: true
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: 'Yaya Stoyakovic',
  location: "Geelong, Victoria",
  interest: 'Baking, Drinking cups of tea, Going for walks',
  description: 'Getting out of the house more would be amazing!',
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://d18mqtxkrsjgmh.cloudfront.net/public/styles/header_image/public/2019-04/elderly%20pic.jpg?itok=mJMUfNv2",
  user_id: user.id,
  monday: true,
  tuesday: false,
  wednesday: true,
  thursday: false,
  friday: true,
  saturday: false,
  sunday: true
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: 'Les Wagon',
  location: "Frankston, Victoria",
  interest: 'Counter meals at the pub, Bird watching.',
  description: 'My grandson told me to join this website.',
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://homecareassistancemontgomery.com/wp-content/uploads/2018/08/Happy-Senior-Man.jpeg",
  user_id: user.id,
  monday: true,
  tuesday: true,
  wednesday: false,
  thursday: false,
  friday: false,
  saturday: false,
  sunday: false
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: 'Doris Pendleton',
  location: "Docklands, Melbourne",
  interest: 'Reading novels, Buying jewellry, Spoiling my grandkids.',
  description: "My husband told me I'm out of touch with the youth of today.",
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://companionsforseniors.com/wp-content/uploads/2020/12/2020-12-28-Making-Reading-Easier-for-the-Elderly.jpg",
  user_id: user.id,
  monday: true,
  tuesday: true,
  wednesday: true,
  thursday: true,
  friday: true,
  saturday: true,
  sunday: true
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: 'Mika Kibonashi',
  location: "Sorrento, Victoria",
  interest: 'Gardening, Riding bicycles, Chess.',
  description: "I'm getting old and lonely at home by myself so I'm looking for activities to brighten my day.",
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://www.silvereco.org/en/wp-content/uploads/2017/10/Japan-China-Elderly-people-Ageing-population-2.jpg",
  user_id: user.id,
  monday: true,
  tuesday: true,
  wednesday: false,
  thursday: false,
  friday: true,
  saturday: false,
  sunday: true
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: 'Dorothy Barrington-Smith',
  location: "Bulleen, Melbourne",
  interest: 'Spending money, Collecting walking sticks, Stamp Enthusiast.',
  description: 'Looking for new friends and new experiences.',
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://agedcaredecisions.com.au/wp-content/uploads/Aged-Care-Decisions-Blogs-Website-2.jpg.webp",
  user_id: user.id,
  monday: true,
  tuesday: true,
  wednesday: false,
  thursday: false,
  friday: true,
  saturday: false,
  sunday: true
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: 'Karen Rushtone',
  location: "Seddon, Melbourne",
  interest: 'Knitting, Playing cards, Wearing Glasses',
  description: 'Convince me this website was a good idea to join.',
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://www.careworkshealthservices.com/wp-content/uploads/2017/01/170101_article2_addressing-older-adults-etiquette_iStock-154888506-1-768x512.jpg",
  user_id: user.id,
  monday: true,
  tuesday: true,
  wednesday: false,
  thursday: false,
  friday: true,
  saturday: false,
  sunday: true
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"
puts "---------------"
puts "Seed complete!"
