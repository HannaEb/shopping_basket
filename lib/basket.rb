require_relative 'product'

class Basket

  attr_reader :contents

  def initialize
    @contents = []
  end

  def add(product, quantity = 1)
    quantity.times { @contents << product }
  end

end
