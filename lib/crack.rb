require 'pry'
require './lib/offset'
require './lib/decrypt'



# > e.crack(output, Date.today)

class Crack
  attr_reader :encrypted_message, :date
  def initialize(encrypted_message, date = Date.today)
    @encrypted_message = encrypted_message
    @date = date
  end

  def cracker
    temp_message = encrypted_message
    dynamite = "00000"

    until temp_message[-7..-1] == "..end.."
      rotations = Rotator.new(dynamite.chars.to_a, Date.today).rotation
      temp_message = Decrypt.new(temp_message, rotations).unscramble
      dynamite = dynamite.succ!
      puts temp_message
    end
  end
end




    # take the encrypted message
    # establish date
    # establish base key of [last 4 offset square digits]
    # count up from offset square and apply decryption through rotator
    # until last 7 of encrypted string ==  ..end..


  # until temp_message[-7..-1] == "..end.."
  #   rotations = Rotator.new(dynamite, Date.today)
  #   temp_message = Decrypt.new(temp_message, rotations).unscramble
  #   dynamite += 1
  #   decrypted_message = temp_message
  #
