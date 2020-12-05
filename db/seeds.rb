# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Microbrewery.destroy_all
Microbrewery.create!(
  name: "Tuatara",
  location: "7 Sheffield Street, Paraparaumu 5032, New Zealand",
  license_renewal: '2020-12-04',
  outdoor_seating: true,
  social_distancing: true
  )
Microbrewery.create!(
  name: "Parrot Dog",
  location: "60/66 Kingsford Smith Street, Lyall Bay, Wellington 6022, New Zealand",
  license_renewal: '2021-12-04',
  outdoor_seating: true,
  social_distancing: true
  )