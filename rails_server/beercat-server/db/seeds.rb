# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Let's do this ...

## BREWERIES

puts "Creating Breweries ..."

brew1 = Brewery.create(name: 'Brewery 9 3/4', city: 'Vancouver', address: '1234 Fake Street', description: "This is the descriptiono of the brewery, it's the best brewery ever.", latitude: 49.283834, longitude: -123.0665496)
brew2 = Brewery.create(name: "Cat's Meow", city: 'Vancouver', address: '237 That Street', description: "You can get beer here. It's tasty.", latitude: 49.2691407, longitude: -123.1051664)

## BEERS

puts "Creating Beers ..."

brew1.beers.create!({
  name:  'Magic Ale',
  description: Faker::Hipster.paragraph(1),
  style: 'Amber Ale',
  score_ABV: 5,
  score_SRM: 6,
  score_IBU: 30,
  score_adventurous: false,
  score_sour: false,
  seasonal: false
})

brew1.beers.create!({
  name:  'Butterbeer',
  description: Faker::Hipster.paragraph(1),
  style: 'Cream Ale',
  score_ABV: 4.5,
  score_SRM: 8,
  score_IBU: 35,
  score_adventurous: true,
  score_sour: false,
  seasonal: false
})

brew1.beers.create!({
  name:  'Leviosa Pilsner',
  description: Faker::Hipster.paragraph(1),
  style: 'Pilsner',
  score_ABV: 4,
  score_SRM: 4,
  score_IBU: 22,
  score_adventurous: false,
  score_sour: false,
  seasonal: false
})

brew1.beers.create!({
  name:  'House Elf IPA',
  description: Faker::Hipster.paragraph(1),
  style: 'IPA',
  score_ABV: 6,
  score_SRM: 5,
  score_IBU: 65,
  score_adventurous: false,
  score_sour: false,
  seasonal: true
})

brew2.beers.create!({
  name:  'Fat Cat Stout',
  description: Faker::Hipster.paragraph(1),
  style: 'Stout',
  score_ABV: 6,
  score_SRM: 17,
  score_IBU: 55,
  score_adventurous: true,
  score_sour: false,
  seasonal: true
})

brew2.beers.create!({
  name:  "Yarn Ballin' IPA",
  description: Faker::Hipster.paragraph(1),
  style: 'IPA',
  score_ABV: 6.5,
  score_SRM: 6,
  score_IBU: 88,
  score_adventurous: false,
  score_sour: false,
  seasonal: false
})


brew2.beers.create!({
  name:  "Bowl of Milk Stout",
  description: Faker::Hipster.paragraph(1),
  style: 'Stout',
  score_ABV: 8,
  score_SRM: 19,
  score_IBU: 45,
  score_adventurous: false,
  score_sour: false,
  seasonal: true
})

## Tours

puts "Creating Tours ..."

Tour.create!({
  name: "Vancouver Prowl",
  city: "Vancouver",
  duration: 3.5,
  description: "It's awesome!",
  tips: "See all the things."
  rating: 4,
})

## TourBreweries

puts "Creating TourBreweries ..."

TourBreweries.create!({
  tour_id: 1,
  brewery_id: 1,
  brewery_order: 1
})

TourBreweries.create!({
  tour_id: 1,
  brewery_id: 2,
  brewery_order: 2
})

puts "DONE!"
