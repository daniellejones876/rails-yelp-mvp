# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
20.times do
  Restaurant.create(
    name: Faker::JapaneseMedia::SwordArtOnline.game_name,
    address: Faker::JapaneseMedia::SwordArtOnline.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese japanese belgian italian french].sample
  )
end
puts 'created 10 random restaurants'

# 100.times do
#   Review.create(
#     content: Faker::Quote.yoda,
#     rating: rand(0..5)
#   )
# end
# puts 'created 100 reviews'
