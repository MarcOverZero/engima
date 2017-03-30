require './test/test_helper'
require './lib/decrypt'

class DecryptTest < Minitest::Test
  def test_it_exists
    decrypt = Decrypt.new("")

    assert_instance_of Decrypt, decrypt
  end

  def test_it_can_unscramble_message
    decrypt = Decrypt.new("mjqqt")
    decrypt.instance_variable_set(:@rotator,[5,5,5,5])

    assert_equal 5, decrypt.unscramble.length
    assert_equal "hello", decrypt.unscramble
  end
end
