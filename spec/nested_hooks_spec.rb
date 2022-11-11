RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'does basic maths' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'does basic some more basic maths' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction as well' do
      expect(3 - 2).to eq(1)
    end
  end
end

#context describes the most current block
#context only runs once
# all outer level blocks are valued before all in inner level
