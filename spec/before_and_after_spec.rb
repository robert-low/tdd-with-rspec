RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'I run before the main describe block above.'
  end

  after(:context) do
    puts 'I run after the describe block above.'
  end

  before(:example) do
    puts 'I run before each example (so twice in this case)'
  end

  after(:example) do
    puts 'I run after each example (so twice in this case)'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(4 - 3).to eq(1)
  end
end
