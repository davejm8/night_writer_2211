require 'simplecov'
SimpleCov.start
require './lib/night_writer'

RSpec.describe NightWriter do
  let(:night_writer) {NightWriter.new}
  
  describe '#initialize' do
    it 'exists' do
      expect(night_writer).to be_a(NightWriter)
    end
  end
end