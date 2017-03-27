require 'pry'
require './lib/key'
require './lib/enigma'

class Encrypt
  attr_reader :key, :chars

  def initialize(message)
    @key = Key.new.rotated_key
    @chars = Enigma.new.char_map
  end

end
