# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Grandparent.create(id: 1, name: "Martha", description: "Sassy Octogenarian", interests: "Boozing", availability: "Weekends", location: "Melbourne")


@grandparent = Grandparent.find(params[:id])
@description = params[:description]
@interests = params[:interests]
@availability = params[:availability]
@location = params[:location]