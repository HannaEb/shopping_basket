require 'checkout'

describe Checkout do
  let(:basket) { double :basket }
  let(:standard) { Delivery.new('Standard', 5) }
  subject { described_class.new(basket, standard)}


  describe '#display_total' do
    context 'without extra charge' do
      it 'displays the total price including delivery' do
        allow(basket).to receive(:price) { 55 }
        expect(subject.display_total).to eq 'The total price is £60.00'
      end
    end

    context 'with extra charge' do
      it 'displays the total price including delivery' do
        allow(basket).to receive(:price) { 10 }
        expect(subject.display_total).to eq 'The total price is £20.00'
      end
    end
  end

end
