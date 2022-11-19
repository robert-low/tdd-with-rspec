RSpec.describe 'change matchers' do
  subject {[1, 2, 3]}
  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
  end
end

# however this method is too closely connected to the subject.
# better to write it like this: 'by' method

RSpec.describe 'change matchers' do
  subject {[1, 2, 3]}
  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end
