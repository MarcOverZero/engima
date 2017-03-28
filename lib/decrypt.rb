require 'pry'
require './lib/key'
require './lib/enigma'

class Decrypt
  attr_reader :key, :chars, :message

  def initialize(message)
    @key = Key.new.rotated_key
    @chars = Enigma.new.char_map
    @message = message.downcase.chars
  end

  def unscramble
    decrypted_message = ""
    message.each_slice(4).map do |slice|
      slice.each_with_index do |letter, idx|
        start = chars.index(letter)
        rotation = key[idx] * -1
        decrypted_message << chars.rotate(rotation)[start]
      end
    end
    decrypted_message
  end
end
