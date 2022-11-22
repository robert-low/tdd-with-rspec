class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I'll be back."
  end

  def fall_off_ladder
    "No way, call my agent!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_filming
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new("Brad Pitt")
# movie = Movie.new(actor)
# movie.start_filming

RSpec.describe Movie do
  let(:stuntman) { double("Mr Danger", ready?: true, act: 'Any string', light_on_fire: true, fall_off_ladder: 'hi') }
  subject { described_class.new(stuntman) }

  describe '#start_filming method' do
    it 'expects an actor to do three actions' do
      # expect(stuntman).to receive(:light_on_fire).once
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      expect(stuntman).to receive(:light_on_fire).at_least(1).times
      # expect(stuntman).to receive(:act).at_most(2).times
      expect(stuntman).to receive(:act).twice
      subject.start_filming
    end
  end
end
