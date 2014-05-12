require './lib/scanner'

describe Scanner do
  context 'creating new Scanner' do
    context 'when input is specified' do
      it "with input '1,2' , variable @tokens is array of proper tokens" do
        scanner = Scanner.new('1,2')
        expect(scanner.tokens).to eq([Token.new('1', 'NUMBER'),Token.new(',', 'COMMA'),Token.new('2', 'NUMBER')])
      end
    end
  end

  context '#array_of_elements' do
    it "returns ['91',',','21'] for input = '91,21'" do
      scanner = Scanner.new(',')
      expect(scanner.array_of_elements('91,21')).to eq(['91',',','21'])
    end

    it "returns [] for input = ''" do
      scanner = Scanner.new('')
      expect(scanner.array_of_elements('')).to eq([])
    end

    it "returns ['conchita wurst'] for input = ''" do
      scanner = Scanner.new('')
      expect(scanner.array_of_elements('conchita wurst')).to eq(['conchita', 'wurst'])
    end
  end
end