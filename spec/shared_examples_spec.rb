# A shared example can be utilised by multiple example groups.
# The below have the same examples for different classes.

# RSpec.describe Array do
#   subject{ [1,2,3] }

#   it 'returns the number of items' do
#     expect(subject.length).to eq(3)
#   end
# end

# RSpec.describe String do
#   subject{ '123' }

#   it 'returns the number of items' do
#     expect(subject.length).to eq(3)
#   end
# end

# RSpec.describe Hash do
#   subject{ {a:1, b:2, c:3} }

#   it 'returns the number of items' do
#     expect(subject.length).to eq(3)
#   end
# end

# class SausageLink
#   def length
#     3
#   end
# end

# RSpec.describe SausageLink do
#   subject { described_class.new }
#   it 'returns the number of items' do
#     expect(subject.length).to eq(3)
#   end
# end

# You can use the shared_example to replace the describe:

RSpec.shared_examples 'a Ruby object with 3 elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject{ [1,2,3] }
  include_examples 'a Ruby object with 3 elements'
end

RSpec.describe String do
  subject{ '123' }
  include_examples 'a Ruby object with 3 elements'
end

RSpec.describe Hash do
  subject{ {a:1, b:2, c:3} }
  include_examples 'a Ruby object with 3 elements'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'a Ruby object with 3 elements'
end
