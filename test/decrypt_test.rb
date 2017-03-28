require 'simplecov'
SimpleCov.start

require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'

class DecryptTest < Minitest::Test
  def test_it_exists
    decrypt = Decrypt.new("")

    assert_instance_of Decrypt, decrypt
  end

  # def test_it_can_unscramble_message
  #   decrypt = Decrypt.new("")
  #   offset = Offset.new
  #   #offset of 0489
  #   assert_equal 5, encrypt.scrambled.flatten.count
  # end
end
