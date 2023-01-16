require './lib/english'

class Translator < English
  attr_reader :alphabet, :braille_message
  
  def initialize
    super
  end

  def translate(input)
    array = []
    input.chars.each do |char|
      @alphabet.each do |eng_letter, braille_char|
        if eng_letter == char
          array << braille_char
        end
      end
      @formatted = array.each_slice(40).map do |sliced|
        sliced.transpose.map(&:join).join("\n")
      end
    end
    @formatted.join("\n\n")
  end
end


# translation_text = input.each_char.inject([]) do |let1, let2|
#   let1 << @alphabet[let2]
# end
# top = []
# middle = []
# bottom = []
# translation_text.each do |letter|
#   top << letter[0]
#   middle << letter[1]
#   bottom << letter[2]
# end
# braille_arr = "#{top.join}\n#{middle.join}\n#{bottom.join}\n"