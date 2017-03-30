require './test/test_helper'
require './lib/enigma'


class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_it_can_encrypt
    enigma = Enigma.new


    assert_equal "lqvx", enigma.encrypt("abcd", "11111",  Date.new(2017, 03, 27))
  end

  def test_it_can_decrypt
    enigma = Enigma.new

    assert_equal "abcd", enigma.decrypt("lqvx", "11111", Date.new(2017, 03, 27))

  end
end
