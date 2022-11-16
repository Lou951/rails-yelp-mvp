# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '020 7946 0379',
            category: 'japanese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '020 7946 0592',
               category: 'italian' }
belgo_centraal = { name: 'Belgo Centraal', address: 'Earlham Street, Covent Garden, London',
                   phone_number: '02078132233', category: 'belgian' }
galvin_la_chapelle = { name: 'Galvin La Chapelle', address: '35 Spital Square, London E1 6DY',
                       phone_number: '020 7299 0400', category: 'french' }
sichuan_folk = { name: 'Sichuan Folk', address: '32 Hanbury St, London E1 6QR', phone_number: '020 7247 4735',
                 category: 'chinese' }

[dishoom, pizza_east, belgo_centraal, galvin_la_chapelle, sichuan_folk].each do |attributes|
  restaurant = Restaurant.new(attributes)
  restaurant.save
  puts "Created #{restaurant.name}"
end
