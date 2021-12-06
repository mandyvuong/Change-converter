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
  it 'returns notes and coins' do
    expect(subject.convert(7.42)).to eq ["£5", "£1", "£1", "20p", "20p", "2p"] 
  end
  it 'returns notes and coins - another test to check output is correct' do
    expect(subject.convert(16.30)).to eq ["£10", "£5", "£1", "20p", "10p"]
  end
  it 'returns notes and coins - another test to check output is correct' do
    expect(subject.convert(19.99)).to eq ["£10", "£5", "£1", "£1", "£1", "£1", "50p", "20p", "20p", "5p", "2p", "2p"]
  end
end