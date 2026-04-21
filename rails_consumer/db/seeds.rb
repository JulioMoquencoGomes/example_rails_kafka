# db/seeds.rb
require "faker"

if Rails.env.development?
  Product.destroy_all
  20.times do
    Product.create!(
      name: Faker::Commerce.product_name,
      code: "#{Faker::Alphanumeric.alpha(number: 4).upcase}#{Faker::Number.number(digits: 4)}",
      price: Faker::Commerce.price(range: 0..100.0)
    )
  end
end