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
user.save
puts "---------------"
puts "User Details: "
puts "Email: #{user.email}"
puts "Password: #{user.password}"
puts "---------------"

puts "Creating grandparents..."

grandparent = Grandparent.new(
  name: Faker::Name.name,
  location: "Richmond, Melbourne",
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://www.smithlifehomecare.com/wp-content/uploads/2020/08/Challenges-of-elderly-smaller.png",
  user_id: user.id
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: Faker::Name.name,
  location: "Geelong, Victoria",
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://d18mqtxkrsjgmh.cloudfront.net/public/styles/header_image/public/2019-04/elderly%20pic.jpg?itok=mJMUfNv2",
  user_id: user.id
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"

grandparent = Grandparent.new(
  name: Faker::Name.name,
  location: "Frankston, Victoria",
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://homecareassistancemontgomery.com/wp-content/uploads/2018/08/Happy-Senior-Man.jpeg",
  user_id: user.id
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"
grandparent = Grandparent.new(
  name: Faker::Name.name,
  location: "Docklands, Melbourne",
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://companionsforseniors.com/wp-content/uploads/2020/12/2020-12-28-Making-Reading-Easier-for-the-Elderly.jpg",
  user_id: user.id
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"
grandparent = Grandparent.new(
  name: Faker::Name.name,
  location: "Sorrento, Victoria",
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://www.silvereco.org/en/wp-content/uploads/2017/10/Japan-China-Elderly-people-Ageing-population-2.jpg",
  user_id: user.id
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"
grandparent = Grandparent.new(
  name: Faker::Name.name,
  location: "Bulleen, Melbourne",
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://agedcaredecisions.com.au/wp-content/uploads/Aged-Care-Decisions-Blogs-Website-2.jpg.webp",
  user_id: user.id
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"
grandparent = Grandparent.new(
  name: Faker::Name.name,
  location: "Seddon, Melbourne",
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
  image: "https://www.careworkshealthservices.com/wp-content/uploads/2017/01/170101_article2_addressing-older-adults-etiquette_iStock-154888506-1-768x512.jpg",
  user_id: user.id
)
grandparent.save!
puts "Grandparent #{grandparent.id} created!"
puts "---------------"
puts "Seed complete!"
