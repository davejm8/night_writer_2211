require './spec/spec_helper'

RSpec.decribe EnglishToBraille do
  let(:english_to_braille) {EnglishToBraille.new}


  describe '#initialize' do
    it 'exists' do
      expect(english_to_braille).to be_a(EnglishToBraille)
    end
  end
end