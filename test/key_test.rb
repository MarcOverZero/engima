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

  def test_if_blank_key_exists
    key = Key.new
    assert_equal [0, 0, 0, 0, 0], key.blank_key
  end

  def test_we_can_cut_the_key
    key = Key.new

    assert_equal 5, key.cut.count
  end

  def test_we_can_cut_unique_key_again
    key = Key.new
    key_1 = key.cut
    key_2 = key.cut

    refute_equal key_1, key_2
  end

end
