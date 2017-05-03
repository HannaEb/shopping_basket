require 'basket'

describe Basket do
  let(:product) { Product.new('Flowers', 5) }

  it 'is empty' do
    expect(subject.contents).to be_empty
  end

  describe '#add' do
    it 'adds a product' do
      subject.add(product)
      expect(subject.contents).to include product
    end
  end

  describe '#total_price' do
    it 'calculates the total price' do
      subject.add(product, 2)
      expect(subject.total_price).to eq 10
    end
  end

end
