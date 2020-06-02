# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Obliterating everthing"
User.destroy_all
puts "end"


puts "Creating Users"

antonio = User.create!(
  first_name: "Antonio",
  last_name: "Sanchez",
  email: "antonio@lewagon.com",
  password: "123123",
  superadmin_role: true
)

linchien = User.create!(
  first_name: "Linchien",
  last_name: "Huang",
  email: "linchien@lewagon.com",
  password: "123123",
  supervisor_role: true
)

isidoro = User.create!(
  first_name: "Isidoro",
  last_name: "Trespalacios",
  email: "isidoro@lewagon.com",
  password: "123123"
)

puts "Users ready"

puts "Creating Jobs"



puts "end"
