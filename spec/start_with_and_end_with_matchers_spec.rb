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

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to end_with(:c, :d)
    end
    it { is_expected.to end_with(:d) }
    it { is_expected.to start_with(:a) }
  end
end
