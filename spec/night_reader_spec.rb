require './spec/spec_helper'

RSpec.describe NightReader do
  let(:night_reader) {NightReader.new}

  before do
    night_reader.in = './braille.txt'
    night_reader.out = './original_message.txt'
  end

  describe '#initialize' do
    it 'exists' do
      expect(night_reader).to be_a(NightReader)
    end

    it "has attributes" do
      night_reader.read_and_write_from_braille
      expect(night_reader.in).to eq('./braille.txt')
      expect(night_reader.out).to eq('./original_message.txt')
    end
  end
end