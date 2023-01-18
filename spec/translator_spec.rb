require './spec/spec_helper'

RSpec.describe Translator do
  let(:translator) {Translator.new}

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
      expect(translator.braille_array("test")).to eq([[".0", "00", "0."], ["0.", ".0", ".."], [".0", "0.", "0."], [".0", "00", "0."]])
    end
  end

  describe '#translate_to_braille' do
    it 'translates english to braille' do
      expect(translator.translate_to_braille("test")).to eq(".00..0.0\n00.00.00\n0...0.0.")
    end
  end

  describe '#split_input' do
    it 'takes braille input and turns it into an array' do
      expect(translator.split_input(".00..0.0\n00.00.00\n0...0.0.")).to eq([[".00..0.0", "00.00.00", "0...0.0."]])
    end
  end

  describe '#format_braille' do
  it 'takes multiple lines and places them in 3 seperate elements: top, middle and bottom' do
    expect(translator.format_braille(".00..0.0\n00.00.00\n0...0.0.")).to eq([[".0", "0.", ".0", ".0"], ["00", ".0", "0.", "00"], ["0.", "..", "0.", "0."]])
  end
end

  describe '#translate_to_english' do
    it 'recieves braille in a txt file and returns a new file with the corresponding english words' do
      expect(translator.translate_to_english(".00..0.0\n 00.00.00\n 0...0.0.")).to eq("test")
    end
  end
end