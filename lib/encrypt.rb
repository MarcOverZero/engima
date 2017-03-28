require 'pry'
require './lib/key'
require './lib/enigma'

class Encrypt
  attr_reader :key, :chars, :message

  def initialize(message)
    @key = Key.new.rotated_key
    @chars = Enigma.new.char_map
    @message = message.downcase.chars
    @encrypted_message = []
  end

  def scrambled
    message.each_slice(4).map do |slice|
      slice.each_with_index do |letter, idx|
        start = chars.index(letter)
        rotation = key[idx]
        @encrypted_message << chars.rotate(rotation)[start]
      end
    end
  end

  def run
    encrypted_message
  end

#   [14] pry(main)> sentence = "Hello there I am fine".downcase.chars=>
# ["h", "e", "l", "l", "o", " ", "t", "h", "e", "r", "e", " ", "i", " ", "a", "m", " ", "f", "i", "n", "e"]
# [15] pry(main)> a << " "
# => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
# [16] pry(main)> sentence.each_slice(4) do |slice|
# [16] pry(main)*   p slice
# [16] pry(main)* end
# ["h", "e", "l", "l"]
# ["o", " ", "t", "h"]
# ["e", "r", "e", " "]
# ["i", " ", "a", "m"]
# [" ", "f", "i", "n"]
# ["e"]
# => nil
# [17] pry(main)> encrypted = ""
# => ""
# [18] pry(main)> sentence.each_slice(4) do |letters|
# [18] pry(main)*   letters.each_with_index do |letter, idx|
# [18] pry(main)*     start = a.index(letter)
# [18] pry(main)*     rotation = rotators[idx]
# [18] pry(main)*     encrypted << a.rotate(rotation)[start]
# [18] pry(main)*   end
# [18] pry(main)* end

end
