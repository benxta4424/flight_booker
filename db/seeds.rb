# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.destroy_all

Airport.create!(name: "New York City")
Airport.create!(name: "Orlando")
Airport.create!(name: "California")
Airport.create!(name: "Miami")
Airport.create!(name: "Los Angeles")
Airport.create!(name: "Houston")
Airport.create!(name: "Ohio")
Airport.create!(name: "Utah")
Airport.create!(name: "Mississippi")
Airport.create!(name: "Yellowstone")

puts "#{Airport.count} airports addded!"
