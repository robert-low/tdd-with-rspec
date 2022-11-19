# ensures elements are in SOME order. not exact order.

RSpec.describe 'contain exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 1, 2)
      expect(subject).to contain_exactly(2, 3, 1)
    end
  end

  # shorthand syntax
  it { is_expected.to contain_exactly(1, 2, 3) }
end
