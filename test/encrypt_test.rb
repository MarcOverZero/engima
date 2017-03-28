require './test/test_helper'
require './lib/encrypt'

class EncryptTest < Minitest::Test
  def test_it_exists
    encrypt = Encrypt.new("hello")

    assert_instance_of Encrypt, encrypt
  end

  def test_it_can_scramble_message
    encrypt = Encrypt.new("hello")
    encrypt.instance_variable_set(:@key,[5,5,5,5])

    assert_equal 5, encrypt.scramble.length
    assert_equal "mjqqt", encrypt.scramble
  end
end
