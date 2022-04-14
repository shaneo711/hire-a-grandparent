# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Wiping database..."
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
user.save!
puts "---------------"
puts "User Details: "
puts "Email: #{user.email}"
puts "Password: #{user.password}"
puts "---------------"

puts "Creating grandparents..."

10.times do
  grandparent = Grandparent.new(
    name: Faker::Name.name,
    location: Faker::Address.city,
    interest: Faker::Hobby.activity,
    description: Faker::Quote.famous_last_words,
    availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
    user_id: user.id
  )
  grandparent.save!
  puts "Grandparent #{grandparent.id} created!"
end
puts "---------------"
puts "Seed complete!"
