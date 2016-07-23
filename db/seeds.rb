require './models/user'
require './models/product'
require 'faker'


(0..10).each do |i|
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      address: Faker::Address.street_address,
      password: Faker::Name.name
    )

end

(0..10).each do |i|
    Product.create(
      name: Faker::Commerce.product_name,
      brand_id: Faker::Number.number(4),
      category_id: Faker::Number.number(4),
      price: Faker::Commerce.price
    )
end
