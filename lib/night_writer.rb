class NightWriter

  attr_accessor :read_file, :write_file

  def initialize
    @read_file = ARGV[0]
    @write_file = ARGV[1]
  end

  def read_and_write
    incoming_text = File.open(@read_file, "r")
    text = incoming_text.read
    character_count = text.chars.count
    puts "Created #{@write_file} contains #{character_count} characters"
    File.write(@write_file, text)
  end

end

night_writer = NightWriter.new
night_writer.read_and_write