# Use describe method to describe what we are testing.
# in this case, we are testing the class, 'Card'.
# method takes a block
# in rspec, a test s called an 'example'
# example group is a set of related tests in the block
# Use it method to create a single example
# it method accepts an argument of a string
# the goal is to describe the feature or funcionality
# you shouldnt talk about how its going to be built
# the it method also takes a block
# a variation of 'it' is 'specify'
# we initialise a new instance of Card with argument of type as a string
# expect is a method invoked with an argument where we specify what we want to test
# below we're saying the card has the attribute 'type' which equals ace of spaces
# eq creates an equality (==) matcher - what is a success for the test


# RSpec.describe 'Card' do
#   it 'has a type (e.g. Ace of Spades)' do
#     card = Card.new('Ace of Spaces')
#     expect(card.type).to eq('Ace of Spaces')
#     #expect(1 + 1).to eq(2)
#   end
# end

# Refactored: remove string for actual class, better to reference what you're testing
# when you reference you have access to helper methods

# RSpec.describe Card do
#   # before do
#   #   @card = Card.new('Ace', 'Spades')
#   #   #The code in this block will run before any example.
#   #   # It is a Hook. It hooks itself into a certain moment in the execution of a test.
#   #   # instance variables are problematic because they throw vague errors if naming is wrong
#   #   # i.e. if it doesnt exist, ruby will assign it nil
#   # end

#   # def card
#   #   Card.new('Ace', 'Spades')
#   # end
#   # this is a helper method to invoke a new instance of card
#   # doesnt allow mutation
#   # need to use let helper method

#   it 'has a rank (e.g. Ace)' do
#     expect(card.rank).to eq('Ace')
#     #expect(1 + 1).to eq(2)
#   end

#   it 'has a suite (e.g. Spade)' do
#     expect(card.suit).to eq('Spades')
#   end
# end

# Rspec.describe 'math calculations' do
#   it 'does basic math' do
#       expect(3 + 4).to eq(7)
#       expect(5 * 3).to eq(15)
#       expect(4 + 4).to eq(8)
#       expect(2 + 2).to eq(4)
#       end
#   end

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }
  # let only runs when it's needed. lazy loading.

  it 'has a rank (e.g. Ace)' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end
  it 'has a suit (e.g. Spades)' do
    expect(card.suit).to eq('Spades')
  end
end
