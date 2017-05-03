require './lib/basket.rb'

shoes = Product.new('Shoes', 30)
shirt = Product.new('Shirt', 15)
standard = Delivery.new('Standard', 5)

basket = Basket.new
basket.add(shoes, 2)
basket.add(shirt)
basket.total_price

checkout = Checkout.new(basket, standard)
checkout.display_total
