RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end
  # one liner
  it { is_expected.to be_odd and be > 20}
end

RSpec.describe 'caterpillar' do
  it 'tests multiple matchers on a single line' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end

  it { is_expected.to start_with('cat') and end_with('pillar')}
end


# can also write it with .and // .or

RSpec.describe [:canada, :usa, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:canada).or eq(:usa).or eq(:mexico)
  end
end


# Questions for this assignment
# Write a compound expectation that asserts the string firetruck starts with the substring "fire" and ends with the substring "truck".

RSpec.describe 'firetruck' do
  it 'checks for the beginning and end of the word' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
  it { is_expected.to start_with('fire') and end_with('truck')}
end

# Write a compound expectation that asserts that the number 20 is even and that it responds to the times mthod.

RSpec.describe 20 do
  it 'is even and responds to times method' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

# Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15.

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'it includes a value and starts with particular values' do
    expect(subject).to include(42).and start_with(4, 8, 15)
  end
  # it { is_expected.to include(42) and start_with(4, 8, 15)}
end
