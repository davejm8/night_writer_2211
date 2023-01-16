require './spec/spec_helper'

RSpec.describe English do
  let(:test_english) { English.new }
  
  describe 'initialize' do
    it 'exists' do
      expect(test_english).to be_a(English)
    end

    it 'has attributes' do
      expect(test_english.alphabet["a"]).to eq(["0.", "..", ".."])
    end
  end
end