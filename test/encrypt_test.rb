require 'simplecov'
SimpleCov.start

require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test
  def test_it_exists
    encrypt = Encrypt.new

    assert_instance_of Encrypt, encrypt
  end

  def test_it_can_parse_message
    encrypt = Encrypt.new("Hello")

    assert_equal
  end



end
