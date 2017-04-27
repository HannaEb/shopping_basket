require 'product'

describe Product do
  subject(:product) { described_class.new('Flowers', 1.50) }

  it 'has a name' do
    expect(subject.name).to eq 'Flowers'
  end

  it 'has a price' do
    expect(subject.price).to eq 1.50
  end

end
