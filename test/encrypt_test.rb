require './test/test_helper'
require './lib/encrypt'

class EncryptTest < Minitest::Test
  def test_it_exists
    encrypt = Encrypt.new("hello", [])

    assert_instance_of Encrypt, encrypt
  end

  def test_it_can_scramble_message
    encrypt = Encrypt.new("abcd", [1,1,1,1])


    assert_equal "bcde", encrypt.scramble
  end
end
