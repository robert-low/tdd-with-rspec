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
