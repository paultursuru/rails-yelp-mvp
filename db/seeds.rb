# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

require 'faker'

10.times do
  restaurantname = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.phone_number_with_country_code
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: restaurantname, address: address, phone_number: phone_number, category: category)
end

  # 5.times do
  #   content = Faker::Restaurant.review
  #   rating = Faker::Number.within(range: 1..5)
  #   Review.create(content: content, rating: rating)
  # end
