require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def test_it_exists
    key = Key.new
    assert_instance_of Key , key
  end

  def test_key_can_be_cut
    key = Key.new

    assert_equal 5, key.cut_key.count
  end

  def test_key_is_cut_uniquely
    key_1 = Key.new
    key_2 = Key.new

    refute_equal key_1.cut_key, key_2.cut_key
  end

  def test_cut_key_gets_rotated
    key= Key.new

    refute_equal key.rotated_key, key.cut_key
  end

end
