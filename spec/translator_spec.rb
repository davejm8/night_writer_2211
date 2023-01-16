require './spec/spec_helper'

RSpec.describe Translator do
  let(:english) {English.new}
  let(:translator) {Translator.new}
  input = File.read('./message.txt')
  output = File.read('./braille.txt')

  # before do
  #   File.write('./message.txt', "hello world")
  #   allow(translator).to receive(:in).and_return('./message.txt')
  #   allow(translator).to receive(:out).and_return('./braille.txt')
    # night_writer.read_and_write
  # end

  describe '#initialize' do
    it 'exists' do
      expect(translator).to be_a(Translator)
    end

      it 'has attributes' do
        # require 'pry'; binding.pry
        expect(translator.alphabet["a"]).to eq(["0.", "..", ".."])
      end
  end

  describe '#translate' do
    it 'translates english to braille' do
      # require 'pry'; binding.pry
      expect(translator.translate(input)).to eq(output)
    end
  end
end