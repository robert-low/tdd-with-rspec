class Deck
  def self.build

  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods defined on a class' do
    deck_klass = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const
    # as_stubbed_const replaces Class with class double above
    # pass deck as a string because in TDD approach this class wouldnt have been created yet so it would throw an error
    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])

  end
end
