require './lib/translator'

class NightReader
  attr_accessor :in, :out, :to_english

  def initialize
    @in = ARGV[0]
    @out = ARGV[1]
    @to_english = Translator.new
  end

  def read_and_write_from_braille
    incoming = File.read(@in)
		translated = @to_english.translate_to_english(File.read('./braille.txt'))	
		outgoing = File.write(@out, translated)
		p "Created #{@out} containing #{translated.length} characters"
  end
end

night_reader = NightReader.new
night_reader.read_and_write_from_braille