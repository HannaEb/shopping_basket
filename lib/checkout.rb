class Checkout

  attr_reader :basket, :products

  def initialize(basket_class = Basket.new)
    @basket = basket_class
    @products = 0
  end

  def scan_products
    @products = @basket.contents
  end

  def display_total
     "The total is £#{calculate_total}"
  end

  private

  def quantity_of(product_name)
    @products.select { |product| product.name == product_name }.count
  end

  def calculate_total
    @products.inject(0) { |sum, product| sum + product.price }
  end

end
