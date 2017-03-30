require 'pry'
require './lib/rotator'
require './lib/enigma'

class Encrypt
  CHARACTER_MAP = [*("a".."z")] + [*("0".."9")] + [" ", ".", ","]
  attr_reader :rotator, :chars, :message
  attr_accessor :encrypted_message
  def initialize(message, rotations)
    @rotations = rotations
    # @chars = Enigma.new.char_map
    @message = message.downcase.chars
  end

  def scramble
    @encrypted_message = ""
    message.each_slice(4) do |slice|
      slice.each_with_index do |letter, idx|
        start = CHARACTER_MAP.index(letter)
        cycle = @rotations[idx]
        @encrypted_message << CHARACTER_MAP.rotate(cycle)[start]
      end
    end
    @encrypted_message
  end
end
