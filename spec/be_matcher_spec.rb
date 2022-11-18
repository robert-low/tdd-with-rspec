RSpec.describe 'be matchers' do
  it 'can test for truthyness' do
    expect(true).to be_truthy
    expect('hello').to be_truthy
    expect(-1).to be_truthy
    expect({}).to be_truthy
    expect([1, -1]).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test for falsyness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil, because it is Ruby object' do
    expect(nil).to be_nil
    my_hash = { a: 1 }
    expect(my_hash[:b]).to be_nil
  end
end
