require 'change_converter'

describe Change_converter do
  it 'returns 1 note in exact amount in pounds' do
    expect(subject.convert(5.00)).to eq ['£5']
  end
end