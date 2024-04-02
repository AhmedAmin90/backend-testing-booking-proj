# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

users = 10.times.map do |time|
  User.create!(username: "user#{time}", password: "StrongP@ssword#{time}")
end

dates = Room.spread_dates("2024-01-01", "2024-06-01")
rooms = 100.times.map do |time|
  Room.create!(available_dates: dates, room_number: "Room #{time + 1}")
end
