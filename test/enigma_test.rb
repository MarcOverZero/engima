require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_it_has_character_map
    enigma = Enigma.new

    assert_equal 39, enigma.char_map.count
  end

  def test_it_can_encrypt
    enigma = Enigma.new


    assert_equal "mjqqt", enigma.encrypt("hello", "55555", 2017-03-27)
  end

  def test_it_can_decrypt
    skip
    enigma = Enigma.new

  end
end
