require 'checkout'

describe Checkout do
  let(:basket) { double :basket }
  let(:product) { Product.new('Orange', 0.29)}
  subject { described_class.new(basket)}

  describe '#scan_products' do
    it 'scans the products' do
      allow(basket).to receive(:contents) { [product] }
      subject.scan_products
      expect(subject.products).to include (product)
    end
  end

  describe '#display_total' do
    it 'displays the total price' do
      allow(basket).to receive(:contents) { [product] }
      subject.scan_products
      expect(subject.display_total).to eq("The total is £#{product.price}")
    end
  end

end
