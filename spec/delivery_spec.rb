require 'delivery'

describe Delivery do
  subject { described_class.new('Standard', 5) }

  it 'has a type' do
    expect(subject.type).to eq 'Standard'
  end

  it 'has a cost' do
    expect(subject.cost).to eq 5
  end

end
