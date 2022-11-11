# nested describe methods with context, for when your tests
# have conditions.

# you can nest describe/context blocks within other describe/blocks

# conditionals are a sign you should extract it to a higher level of
# describe block.

# context is an alias for describe

RSpec.describe '#even method' do
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end

    context 'with odd number' do
      it 'should return false' do
        expect(5.even?).to eq(false)
      end
    end
  end
end
