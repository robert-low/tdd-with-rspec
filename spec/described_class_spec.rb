class Royal
attr_reader :name

  def initialize(name)
    @name = name
  end
end

# the described_class helper references the name of the class in the test,
# so that you can change a class name and not have to change every instance of its name in the test
# it dynamically references the class name in the describe block.

RSpec.describe Royal do
  subject { described_class.new('Rob')}
  let(:john) { described_class.new('John') }

  it 'represents a new person' do
    expect(subject.name).to eq('Rob')
    expect(john.name).to eq('John')
  end
end
