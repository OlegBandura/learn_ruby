require 'string_calculator'
describe StringCalculator do
  describe '.add' do
    it 'is 0' do
      expect(described_class.add('')).to eq(0)
    end
    context 'is 2' do
      let(:number) { '2' }
      it { expect(described_class.add(number)).to eql(2) }
    end

    context 'is 10' do
      let(:number) { '10' }
      it { expect(described_class.add(number)).to eql(10) }
    end

    context "given '2,4'" do
      it 'returns 6' do
        expect(StringCalculator.add('2,4')).to eql(6)
      end
    end

    context "given '17,100'" do
      it 'returns 117' do
        expect(StringCalculator.add('17,100')).to eql(117)
      end
    end
  end
end
