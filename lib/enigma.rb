require 'pry'
require './lib/key'
require './lib/encrypt'
require './lib/decrypt'
require '.lib/offset'


class Enigma

  def initialize
  end

  def char_map
    @char_map = [*("a".."z")] + [*("0".."9")] + [" ", ".", ","]
  end

  



end
