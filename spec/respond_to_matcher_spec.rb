# checks that the method exists on the object

class HotChocolate
  def drink
    'Delicious!'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "I have purchased #{number} hot chocolate."
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
  end

  it 'can also respond to methods with specific arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:drink) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
