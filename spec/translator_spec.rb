require './spec/spec_helper'

RSpec.describe Translator do
  let(:translator) {Translator.new}
  input = File.read('./message.txt')


  describe '#initialize' do
    it 'exists' do
      expect(translator).to be_a(Translator)
    end

      it 'has attributes' do
        expect(translator.alphabet["a"]).to eq(["0.", "..", ".."])
      end
  end

  describe '#translate' do
    it 'translates english to braille' do
      expect(translator.translate(input)).to be_a(String)
    end
  end
end