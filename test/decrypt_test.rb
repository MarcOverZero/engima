require './test/test_helper'
require './lib/decrypt'

class DecryptTest < Minitest::Test
  def test_it_exists
    decrypt = Decrypt.new("hello", [])

    assert_instance_of Decrypt, decrypt
  end

  def test_it_can_unscramble_message
    decrypt = Decrypt.new("bcde", [1,1,1,1])


    assert_equal "abcd", decrypt.unscramble
  end
end
