require './spec/spec_helper'

RSpec.describe Translator do
  let(:english) {English.new}
  let(:translator) {Translator.new}
  input = File.read('./message.txt')
  output = File.read('./braille.txt')

  describe '#initialize' do
    it 'exists' do
      expect(translator).to be_a(Translator)
    end

      it 'has attributes' do
        expect(translator.alphabet["a"]).to eq(["0.", "..", ".."])
      end
  end

  describe '#braille_translation' do
    it 'translates to a braille array' do
      expect(translator.braille_translation(input).flatten).to be_a(Array)
    end
  end

  describe '#translate' do
    it 'translates english to braille' do
      translator.braille_translation(input)
      translator.translate(input)
      expect(translator.translate(input)).to eq(output)
    end
  end
end