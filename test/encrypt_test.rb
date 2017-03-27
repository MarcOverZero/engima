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

  def test_it_can_slice_message
    encrypt = Encrypt.new("hello")
    offset = Offset.new
    assert_equal [["h", "e", "l", "l"],["o"]], encrypt.sliced
  end
end
