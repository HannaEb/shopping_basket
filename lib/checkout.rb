class Checkout

  MINIMUM_PRICE = 50
  EXTRA_CHARGE = 5

  attr_reader :basket

  def initialize(basket_class = Basket.new, delivery_class = Delivery.new)
    @basket = basket_class
    @delivery = delivery_class
    @total = 0
  end

  def display_total
    calculate_total
    "The total price is £#{sprintf('%.2f', @total)}"
  end

  private

  def calculate_total
    @total =+ (@basket.price + @delivery.cost)
    if @basket.price < MINIMUM_PRICE
      @total += EXTRA_CHARGE
    end
  end

end
