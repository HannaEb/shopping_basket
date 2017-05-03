require_relative 'product'
require_relative 'checkout'
require_relative 'delivery'

class Basket

  attr_reader :contents, :price

  def initialize
    @contents = []
    @price = 0
  end

  def add(product, quantity = 1)
    quantity.times { @contents << product }
  end

  def total_price
    calculate_total
  end

  private

  def calculate_total
    @price = @contents.inject(0) { |sum, product| sum + product.price }
  end

end
