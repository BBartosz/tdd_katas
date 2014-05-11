require './lib/string_calculator'

describe StringCalculator, "#add" do
  context 'for empty string' do  
    it 'returns 0' do
      expect(StringCalculator.add('')).to eq(0)
    end
  end
  
  context 'for one number' do
    it "returns 1 for '1' as input" do
      expect(StringCalculator.add('1')).to eq(1)
    end
    it "returns 14 for '14' as input" do
      expect(StringCalculator.add('14')).to eq(14)
    end
    it "returns 181 for '181' as input"  do
      expect(StringCalculator.add('14')).to eq(14)
    end
  end
  
  context 'for multiple numbers' do
    it "returns 3 for '1,2'" do
      expect(StringCalculator.add('1,2')).to eq(3)
    end
    
    it "returns 10 for '5,5'" do
      expect(StringCalculator.add('5,5')).to eq(10)
    end
    
    it "returns 12 for '7,5'" do
      expect(StringCalculator.add('7,5')).to eq(12)
    end
    
    it "returns 47 for '7,40'" do
      expect(StringCalculator.add('7,40')).to eq(47)
    end
    
    it "returns 12 for '7,3,2'" do
      expect(StringCalculator.add('7,3,2')).to eq(12)
    end
    
    it "returns 14 for '2,3,4,5'" do
      expect(StringCalculator.add('2,3,4,5')).to eq(14)
    end
  end
end