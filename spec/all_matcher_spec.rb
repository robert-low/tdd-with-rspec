RSpec.describe 'all matcher' do
  it 'allows for aggregate checks by iterating' do
    [1, 3, 5].each do |value|
      expect(value).to be_odd
    end
    expect([1, 3, 5, 7, 9]).to all(be_odd)
  end

  it 'you can also write it like this: all' do
    expect([1, 3, 5, 7, 9]).to all(be_odd)
    expect([4, 6, 8, 10]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
    expect([10, 11, 9]).to all(be < 15)
  end

end
