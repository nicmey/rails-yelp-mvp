# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

5.times do
  resto = Restaurant.new({
    name: Faker::Coffee.blend_name,
    address: "1 Av",
    phone_number: "0101010",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  })
  resto.save!
end

10.times do
  review = Review.new({
    content: ["good", "very good", "not good"].sample,
    rating: 5
  })
  review.restaurant = Restaurant.all.sample
  review.save!
end
