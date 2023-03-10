require './spec/spec_helper'

RSpec.describe NightWriter do
  let(:night_writer) {NightWriter.new}
  let(:txt_file) {File.open(night_writer.input, "r")}

  before do
    night_writer.in = './message.txt'
    night_writer.out = './braille.txt'
  end

  describe '#initialize' do
    it 'exists' do
      expect(night_writer).to be_a(NightWriter)
    end

    it "has attributes" do
      night_writer.read_and_write
      expect(night_writer.in).to eq('./message.txt')
      expect(night_writer.out).to eq('./braille.txt')
      expect(night_writer.to_braille).to be_a(Translator)
    end
  end
end