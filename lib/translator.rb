require './lib/english'

class Translator < English
  attr_reader :alphabet, :braille_message
  
  def initialize
    super
  end

  def translate(input)
    translation_text = input.each_char.inject([]) do |let1, let2|
      let1 << @alphabet[let2]
    end
    top = []
    middle = []
    bottom = []
    translation_text.each do |letter|
      top << letter[0]
      middle << letter[1]
      bottom << letter[2]
    end
    braille_arr = [top, middle, bottom]
    braille_arr.map(&:join).join("\n")
  end
end