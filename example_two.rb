require './lib/basket.rb'

shoes = Product.new('Shoes', 30)
shirt = Product.new('Shirt', 15)
express = Delivery.new('Express', 10)

basket = Basket.new
basket.add(shoes)
basket.add(shirt)
basket.total_price

checkout = Checkout.new(basket, express)
checkout.display_total
