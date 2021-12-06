require 'change_converter'

describe ChangeConverter do
  it 'returns 1 note in exact amount in pounds' do
    expect(subject.convert(5.00)).to eq ['£5']
  end
  it 'retuns 1 coin in exact amount in pence' do
    expect(subject.convert(0.05)).to eq ['5p']
  end
  it 'returns 2 notes in pounds only' do
    expect(subject.convert(40)).to eq ["£20", "£20"]
  end
  it 'returns 2 coins in pence only' do
    expect(subject.convert(0.40)).to eq ["20p", "20p"] 
  end
end