# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Microbrewery.destroy_all
Teahouse.destroy_all

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

Teahouse.create!(
  name: "Mei Leaf",
  location:           "99-105 Camden High Street, London, NW1 7JN, UK",
  restocked_on:       "2020-12-01 08:00:00",
  opening_date:       "2020-12-01 08:00:00",
  allows_dogs:        true
  )

Teahouse.create!(
  name: "Tea Drunk",
  location:           "123 E 7th St, New York, NY 10009",
  restocked_on:       "2020-10-11 09:00:00",
  opening_date:       "2010-02-01 06:00:00",
  allows_dogs:        false
  )
