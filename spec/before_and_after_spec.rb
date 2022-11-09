RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'I run before the main describe block above.'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(4 - 3).to eq(1)
  end
end
