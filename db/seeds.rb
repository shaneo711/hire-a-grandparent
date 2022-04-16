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
user.save
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
    image: "https://i.guim.co.uk/img/media/3aab8a0699616ac94346c05f667b40844e46322f/0_123_5616_3432/master/5616.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=787f2043553cbb582a5b884880cc9b55",
    user_id: user.id
  )
  grandparent.save!
  puts "Grandparent #{grandparent.id} created!"
end
puts "---------------"
puts "Seed complete!"
