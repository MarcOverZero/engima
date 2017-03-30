require 'pry'
require './lib/rotator'
require './lib/enigma'

class Decrypt
  CHARACTER_MAP = [*("a".."z")] + [*("0".."9")] + [" ", ".", ","]
  attr_reader :rotator, :message
  attr_accessor :decrypted_message

  def initialize(message, rotations)
    @rotations = rotations
    @message = message.downcase.chars
  end

  def unscramble
    @decrypted_message = ""
    message.each_slice(4).map do |slice|
      slice.each_with_index do |letter, idx|
        start = CHARACTER_MAP.index(letter)
        cycle = @rotations[idx] * -1
        @decrypted_message << CHARACTER_MAP.rotate(cycle)[start]
      end
    end
    @decrypted_message
  end
end
