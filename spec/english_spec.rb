require './spec/spec_helper'

RSpec.describe EnglishBraille do
  let(:test_english) { EnglishBraille.new }
  
  describe 'initialize' do
    it 'exists' do
      expect(test_english).to be_a(EnglishBraille)
    end

    it 'has attributes' do
      expect(test_english.alphabet["a"]).to eq(["0.", "..", ".."])
      expect(test_english.braille_characters[["0.", "..", ".."]]).to eq("a")
    end
  end
end