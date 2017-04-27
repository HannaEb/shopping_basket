require 'basket'

describe Basket do
  let(:product) { double :product }

  it 'is empty' do
    expect(subject.contents).to be_empty
  end

  describe '#add' do
    it 'adds a product' do
      subject.add(product)
      expect(subject.contents).to include product
    end
  end

end
