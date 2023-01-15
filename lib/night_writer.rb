require './lib/translator'

class NightWriter

  attr_accessor :read_file, :write_file, :translated_letters

  def initialize
    @in = ARGV[0]
    @out = ARGV[1]
    @to_braille = Translator.new
  end

  def read_and_write
    incoming = File.open(@in, "r")
		text = incoming.read
		translated = @to_braille.translate(File.read('./message.txt'))	
		outgoing = File.write(@out, translated)
		p "Created #{@out} containing #{text.length} characters"
  end

end

night_writer = NightWriter.new
night_writer.read_and_write