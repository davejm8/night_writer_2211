require './lib/english'

class Translator < English
  attr_reader :alphabet, :braille_characters
  
  def initialize
    super
  end

  def braille_array(input)
    input.chars.filter_map do |letter|
      @alphabet[letter]
    end
  end
  
  def translate_to_braille(input)
    braille_array(input).each_slice(40).map do |sliced|
      sliced.transpose.map(&:join).join("\n")
    end.join("\n\n")
  end


  def braille_format(input)
    braille_message = []
    braille_message << input.split
  
    braille_split = []
    braille_message.map do |braille|
      braille.each do |character|
        braille_split << character.chars.each_slice(2).map(&:join)
      end
    end
    braille_split
  end

  def translate_to_english(input)
    in_eng = []
    braille_format(input).transpose.map do |letter|
      in_eng << @braille_characters[letter]
    end
    in_eng.join
  end
end