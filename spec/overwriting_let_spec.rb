class ProgrammingLanaguage
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanaguage do
  let(:language) { ProgrammingLanaguage.new('Python')}
  # every child has access to the parent helper method (e.g let)

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no initialisation argument' do
    let(:language) { ProgrammingLanaguage.new }
    #however nested variables overwrite parent variables

    it 'should default to "Ruby" as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
