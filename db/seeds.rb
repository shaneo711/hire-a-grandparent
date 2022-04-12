# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."

10.times do
Grandparent.create(
  name: Faker::Name.name,
  location: Faker::Address.city,
  interest: Faker::Hobby.activity,
  description: Faker::Quote.famous_last_words,
  availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
)
end