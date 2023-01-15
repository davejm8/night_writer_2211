require './lib/english'

class Translator < English
  attr_reader :alphabet, :braille
  
  def initialize
    super
    @braille_message = ""
  end

  def braille_translation(input)
    @translation_text = input.each_char.inject([]) do |let1, let2|
      let1 << @alphabet[let2]
    end
  end

  def input_message(input)
    @input_text = File.read(file_input).chomp
  end

  def translate(input)
    top = []
    middle = []
    bottom = []
    @translation_text.each do |letter|
      top << letter[0]
      middle << letter[1]
      bottom << letter[2]
    end
    @braille_message = "#{top.join}\n#{middle.join}\n#{bottom.join}\n"
  end
end