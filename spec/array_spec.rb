
# Create a new ​array_spec.rb​ file.

# Create an example group using ​RSpec.describe​ with an argument of ​Array​.

# This represent Ruby's native Array class.

# Add an example with a docstring of your choice.

# Write an assertion that tests that the initial length of ​subject​ is 0.

# In the same example, invoke the ​push​ method to add an element to the ​subject​ array.

# Write another assertion to check that the length of the array is now 1.

RSpec.describe Array do
  it 'has an initial length of 0' do
    expect(subject.count).to eq(0)
    subject.push('hello')
    expect(subject.count).to eq(1)
  end
end
