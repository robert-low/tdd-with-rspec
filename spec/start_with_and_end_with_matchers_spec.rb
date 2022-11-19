# checks that an object begins or concludes with one or more values

RSpec.describe 'start with and end with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end
    # shorthand syntax
    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end
end
