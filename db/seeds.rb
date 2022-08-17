# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
madonna_me = { name: 'Madonna Me', address: '34 Cr Balguerie Stuttenberg, 33300 Bordeaux', phone_number: '05 50 43 01 21', category: 'italian' }
edmond_burger = { name: 'Edmond Burger', address: '34 Rue de Palais Gallien, 33000 Bordeaux', phone_number: '05 56 81 77 93', category: 'french' }
fufu_ramen = { name: 'Fufu Ramen', address: '37 Rue Saint-Rémi, 33000 Bordeaux', phone_number: '05 56 52 10 29', category: 'chinese' }
cafeincup = { name: 'Cafeincup', address: '3 Rue Louis Combes, 33000 Bordeaux', phone_number: '09 87 52 33 78', category: 'french' }
suzzi = { name: 'Suzzi', address: '46 Rue des Trois-Conils, 33000 Bordeaux', phone_number: '05 56 38 22 42', category: 'french' }

[madonna_me, edmond_burger, fufu_ramen, cafeincup, suzzi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
