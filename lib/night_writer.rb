require './lib/translator'

class NightWriter
  attr_accessor :in, :out, :to_braille

  def initialize
    @in = ARGV[0]
    @out = ARGV[1]
    @to_braille = Translator.new
  end

  def read_and_write
    incoming = File.read(@in)
		translated = @to_braille.translate_to_braille(File.read('./message.txt'))	
		File.write(@out, translated)
		p "Created #{@out} containing #{incoming.length} characters"
  end

end

night_writer = NightWriter.new
night_writer.read_and_write