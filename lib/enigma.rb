require 'pry'
require './lib/rotator'
require './lib/encrypt'
require './lib/decrypt'


class Enigma
  attr_reader :encrypt_class
  def initialize
  end

  def encrypt(input, key = nil, date)#=nil)

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
# if __FILE__ == $PROGRAM_NAME
 #     input_file = File.open(ARGV[0], "r").readlines
 #     self.encrypt(input_file.join("").chomp)
 #     output_file = File.open(ARGV[1], encrypted_message)
 #     output_file.close
 #     "Created 'encrypted.txt' with the key #{@rotator.key} and the date #{Date.today.strftime("%d%m%y")}."
 #
 #     self.decrypt(output_file.join("").chomp)
 #     decrypted_file = File.write(ARGV[2], "w")
 #     "Created 'decrypted.txt' with the key #{enigma.rotator.key} and the date #{Date.today.strftime("%d%m%y")}."
 #
 #     self.crack(encrypted.txt)
 #     cracked_file = File.open(ARGV[3], "w").readlines
 #     self.(input_file.join("").chomp).scramble
 #     File.write(ARGV[1], encrypted_message)
 #     "Created 'encrypted.txt' with the key #{enigma.rotator.key} and the date #{Date.today.strftime("%d%m%y")}."
 #   end
