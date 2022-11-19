RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }
  # subject { 'racecars' } --> uncomment for error message

  it 'is a palindrome' do
    expect(subject).to satisfy  { |value| value == value.reverse }
  end

  # not specific enough an error message, so a block is needed:

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end
end
