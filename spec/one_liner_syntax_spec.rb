RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal to 5' do
      expect(subject).to eq(5)
    end
  end
  # The subject helper allows us to write this shorthand.
  # is_expected is a method that checks the subject directly

  context 'with shorthand syntax' do
    it { is_expected.to eq(5) }
  end
end
