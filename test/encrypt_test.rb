require 'simplecov'
SimpleCov.start

require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test
  def test_it_exists
    encrypt = Encrypt.new("hello")

    assert_instance_of Encrypt, encrypt
  end

  def test_it_can_scramble_message
    encrypt = Encrypt.new("hello")
    offset = Offset.new
    #offset of 0489
    assert_equal 5, encrypt.scrambled.flatten.count
  end
end
