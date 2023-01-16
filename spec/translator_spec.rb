require './spec/spec_helper'

RSpec.describe Translator do
  let(:translator) {Translator.new}
  eng_to_br_in = File.read('./message.txt')
  eng_to_br_out = File.read('./braille.txt')
  br_to_eng_in = File.read('./braille.txt')
  br_to_eng_out = File.read('./original_message.txt')

  describe '#initialize' do
    it 'exists' do
      expect(translator).to be_a(Translator)
    end

      it 'has attributes' do
        expect(translator.alphabet["a"]).to eq(["0.", "..", ".."])
      end
  end

  describe '#braille_array' do
    it 'takes english input and returns an array of the braille characters' do
      expect(translator.braille_array(eng_to_br_in)).to be_a(Array)
    end
  end

  describe '#translate_to_braille' do
    it 'translates english to braille' do
      expect(translator.translate_to_braille(eng_to_br_in)).to eq(eng_to_br_out)
    end
  end

  describe '#braille_format' do
    it 'formats braille into a nested array' do
      expect(translator.braille_format(br_to_eng_in)).to be_a(Array)
    end
  end

  describe '#translate_to_english' do
    it 'translates braille to english' do
      expect(translator.translate_to_english(br_to_eng_in)).to eq(br_to_eng_out)
    end
  end
end