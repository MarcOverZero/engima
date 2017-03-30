require 'pry'
require './lib/rotator'
require './lib/enigma'

class Decrypt
  attr_reader :rotator, :chars, :message

  def initialize(message)
    @rotator = Rotator.new.rotation
    @chars = Enigma.new.char_map
    @message = message.downcase.chars
  end

  def unscramble
    decrypted_message = ""
    message.each_slice(4).map do |slice|
      slice.each_with_index do |letter, idx|
        start = chars.index(letter)
        rotation = rotator[idx] * -1
        decrypted_message << chars.rotate(rotation)[start]
      end
    end
    decrypted_message
  end
end
