RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for string inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end
    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 20)
    end
    it { is_expected.to include(10) }
  end

  describe ({a: 1, b: 2}) do
    it 'can check for a key existence' do
      expect(subject).to include(:a, :b)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 1)
    end
    it { is_expected.to include(a: 1) }
  end
end
