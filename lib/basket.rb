require_relative 'product'
require_relative 'checkout'
require_relative 'deal'

class Basket

  attr_reader :contents

  def initialize
    @contents = []
  end

  def add(product, quantity = 1)
    quantity.times { @contents << product }
  end

end
