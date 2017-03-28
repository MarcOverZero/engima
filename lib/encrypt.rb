require 'pry'
require './lib/key'
require './lib/enigma'

class Encrypt
  attr_reader :key, :chars, :message, :encrypted_message

  def initialize(message)
    @key = Key.new.rotated_key
    @chars = Enigma.new.char_map
    @message = message.downcase.chars
  end

  def scramble
    encrypted_message = ""
    message.each_slice(4).map do |slice|
      slice.each_with_index do |letter, idx|
        start = chars.index(letter)
        rotation = key[idx]
        encrypted_message << chars.rotate(rotation)[start]
      end
    end
    encrypted_message
  end
end
