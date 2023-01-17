Turing Mod 1 Final Project
This is a Ruby program for translating English characters into Braille and Braille to English. night_writer and night_reader files are used to perform the translations. When running these files 2 additional files are given from the command line, the first should contain text to be translated and the second should be a new file into which the translation will be written.

Braille uses a grid of zeroes and dots to represent characters.

##For example, the English character 'h' is as follows:

0.
00
..


Based on these principles, 'hello world' is as follows:

0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...

Instructions:

English to Braille:
Run night_writer after typing a message in message.txt

$ ruby ./lib/night_writer.rb message.txt braille.txt

Your terminal will show a message
Created 'braille.txt' containing (number of characters) characters.

Braille to English alphabet:
Run night_reader as follows

$ ruby ./lib/night_reader.rb braille.txt original_message.txt

Your terminal will show a message
Created 'original_message.txt' containing (number of characters) characters.
 

Functionality

Within the lib directory files 'night_writer.rb' and 'night_reader.rb' contain their respective classes which take in input and output file paths upon being initialized.  The file 'translator.rb' contains the translator class that inherits from the english class stored in 'english.rb' The purpose of this inheritance is to memoize the hash used in the translating logic stored in translator.

All testing was done using TDD.