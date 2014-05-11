require './lib/string_calculator'

describe "#add" do
  it 'returns 0 for and empty string' do
    expect(add('')).to eq(0)
  end
end