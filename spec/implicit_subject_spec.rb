# RSpec.describe Hash do
#   # let(:my_hash) { Hash.new }
#   # let(:subject) { Hash.new } - this is BUILT in
# end

# not necessary to define hash because rspec makes a method called 'subject'
# available to us

RSpec.describe Hash do

  it 'should start off empty' do
    expect(subject.length).to eq(0)
  end

end
