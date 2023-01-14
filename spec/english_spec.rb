require './spec/spec_helper'

RSpec.describe English do
  let(:test_english) { English.new }
  
  it 'exists' do
    expect(test_english).to be_a(English)
  end

  describe '#english' do
    it 'creates a hash of english letters with their braille keys' do
      expect(test_english.english_translate["a"]).to eq(["0.", "..", ".."])
    end
  end
end