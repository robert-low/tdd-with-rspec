RSpec.describe 'allow method review' do
  it 'can customise a return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq(15)
    expect(calculator.add('hello')).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    # we have stepped in to tell the method sum what it should return

    expect(arr.sum).to eq(10)
    expect(arr.push(4)).to eq([1, 2, 3, 4])
    # we have no modified the original array
  end
end
