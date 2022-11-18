RSpec.describe 'predicate methods and matchers' do
  it 'can be tested with Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can also be tested with predicate methods' do
    expect(16 / 2).to be_even
    expect(16 /2).not_to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end

# predicate matchers test ruby predicate methods
# be_even == even?
