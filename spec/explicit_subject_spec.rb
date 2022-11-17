RSpec.describe Hash do
  subject(:meal) do
    { food: 'cheese', drink: 'water' }
  end

  it 'has two key-value pairs' do
    expect(:meal.length).to eq(2)
  end
end
