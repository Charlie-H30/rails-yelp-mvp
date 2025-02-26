# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database ..."
Review.destroy_all
Restaurant.destroy_all

puts "Creating instances"
Restaurant.create!(name: "Nandos", address: "Birmingham", phone_number: "999", category: "chinese")
puts "Created Nandos"

Restaurant.create!(name: "Gary", address: "The Ocean", phone_number: "+1145", category: "italian")
puts "Created Gary"

Restaurant.create!(name: "Baguette City", address: "France", phone_number: "111", category: "french")
puts "Created BC"

Restaurant.create!(name: "Sushi Plaza", address: "45 Long Island", phone_number: "505", category: "japanese")
puts "Created SP"

Restaurant.create!(name: "Maxime", address: "Quarry", phone_number: "7772", category: "belgian")
puts "Created Maxime"

puts "Finished! Created #{Restaurant.count} restaurants"
