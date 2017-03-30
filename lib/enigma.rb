require 'pry'
require './lib/rotator'
require './lib/encrypt'
require './lib/decrypt'


class Enigma
  attr_reader :encrypt_class
  def initialize
  end

  def encrypt(input, key = nil, date = nil)
    combined_rotations = Rotator.new(key, date).rotation
    encrypt_class = Encrypt.new(input, combined_rotations)

    "#{encrypt_class.scramble}"
  end

  def decrypt(input, key = nil, date = nil)
    combined_rotations = Rotator.new(key, date).rotation
    decrypt_class = Decrypt.new(input, combined_rotations)

    "#{decrypt_class.unscramble}"
  end
end
