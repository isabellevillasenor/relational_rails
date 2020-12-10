# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Microbrewery.destroy_all
Beer.destroy_all
Teahouse.destroy_all
Tea.destroy_all

tuatara = Microbrewery.create!(
  name: "Tuatara",
  location: "7 Sheffield Street, Paraparaumu 5032, New Zealand",
  license_renewal: '2020-12-04',
  outdoor_seating: true,
  social_distancing: true
  )
parrot_dog = Microbrewery.create!(
  name: "Parrot Dog",
  location: "60/66 Kingsford Smith Street, Lyall Bay, Wellington 6022, New Zealand",
  license_renewal: '2021-12-04',
  outdoor_seating: true,
  social_distancing: true
  )

parrot_dog.beers.create!(
  category: "Pilsner",
  name: "Pandemonium",
  ABV: 4.8,
  ideal_vessel: "flute",
  body: "light",
  aroma: "citrus",
  color: "straw",
  brewed_on: "2020-03-01 08:00:00"
 )

parrot_dog.beers.create!(
  category: "IPA",
  name: "Death From Above",
  ABV: 6.8,
  ideal_vessel: "Pint",
  body: "Full",
  aroma: "Hoppy",
  color: "Dark Caramel",
  brewed_on: "2020-06-01 08:00:00"
 )

tuatara.beers.create!(
  category: "Dark Ale",
  name: "Belgian Dubbel",
  ABV: 7.5,
  ideal_vessel: "Pint",
  body: "Full",
  aroma: "Sweet, dark candy aroma",
  color: "Light Mahogany",
  brewed_on: "2020-07-11 08:00:00"
 )

tuatara.beers.create!(
  category: "Pale Ale",
  name: "Pacific Pale Ale",
  ABV: 4.4,
  ideal_vessel: "Flute",
  body: "Light",
  aroma: "Floral, tropical fruit",
  color: "Light Amber",
  brewed_on: "2020-02-21 08:00:00"
 )

mei_leaf = Teahouse.create!(
  name: "Mei Leaf",
  location:           "99-105 Camden High Street, London, NW1 7JN, UK",
  restocked_on:       "2020-12-01 08:00:00",
  opening_date:       "2020-12-01 08:00:00",
  allows_dogs:        true
  )

tea_drunk = Teahouse.create!(
  name: "Tea Drunk",
  location:           "123 E 7th St, New York, NY 10009",
  restocked_on:       "2020-10-11 09:00:00",
  opening_date:       "2010-02-01 06:00:00",
  allows_dogs:        false
  )

mei_leaf.teas.create!(
  name: "Young Gushu",
  category: "Ripe PuErh",
  origin: "Bang Dong Da Xue Shan, Yunnan, China",
  grams_needed: 5.0,
  steep_time: 25,
  brew_temp: 99,
  number_of_infusions: 12,
  season_picked: "2020-03-08 08:00:00",
  ideal_teapot: "Gaiwan",
  caffeinated: true
)

tea_drunk.teas.create!(
  name: "Mi Lan Xiang",
  category: "Oolang",
  origin: "Wudong, Guangdong, China",
  grams_needed: 5.0,
  steep_time: 25,
  brew_temp: 95,
  number_of_infusions: 9,
  season_picked: "2020-03-01 08:00:00",
  ideal_teapot: "Kyusu",
  caffeinated: true
)
