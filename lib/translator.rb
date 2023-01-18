require './lib/english_braille'

class Translator < English
  attr_reader :alphabet, :braille_characters
  
  def initialize
    super
  end

  def braille_array(input)
    input.chars.map do |letter|
      @alphabet[letter]
    end
  end
  
  def translate_to_braille(input)
    braille_array(input).each_slice(40).map do |sliced|
      sliced.transpose.map(&:join).join("\n")
    end.join("\n\n")
  end

  def split_input(input)
    input_array = []
		input_array << input.split
    input_array
  end

  def format_braille(input)
    formatted_braille_array = []
    
		split_input(input).map do |braille|      
      top = (braille.find_all.with_index{|braille, index| index % 3 == 0}).join
      middle = (braille.find_all.with_index{|braille, index| index % 3 == 1}).join
      bottom = (braille.find_all.with_index{|braille, index| index % 3 == 2}).join
			
      formatted_braille = [top, middle, bottom]
      
			formatted_braille.each do |character|
				formatted_braille_array.push(character.chars.each_slice(2).map(&:join))
			end
    end
    formatted_braille_array
  end

  def translate_to_english(input)
	  format_braille(input).transpose.map do |character|
			@braille_characters[character]
		end.join
	end
end

