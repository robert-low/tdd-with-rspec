# You can test for something to not equal something with not_to

RSpec.describe 'testing the not_to method' do
  it 'does not equal test' do
    expect(5).not_to eq(6)
    expect('Hello').not_to eq('hello')
    expect([1, 2, 3]).not_to eq([1, 2])
  end
end
