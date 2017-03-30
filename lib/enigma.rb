require 'pry'
require './lib/rotator'
require './lib/encrypt'
require './lib/decrypt'


class Enigma
  attr_reader :encrypt_class
  def initialize

  end

  def char_map
    @char_map = [*("a".."z")] + [*("0".."9")] + [" ", ".", ","]
  end

  def encrypt(input, key=nil, date=nil)
    combined_rotations = Rotator.new(key, date).rotation
    @encrypt_class = Encrypt.new(input, combined_rotations)


    # key ||= encrypt_class.rotator.key.join("")
    # date ||= Date.today
    "#{encrypt_class.scramble}"
  end






end
