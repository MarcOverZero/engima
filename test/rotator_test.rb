require './test/test_helper'
require './lib/rotator'

class RotatorTest < Minitest::Test

  def test_it_exists
    rotator = Rotator.new

    assert_instance_of Rotator, rotator
  end

  def test_it_produces_a_rotation
    rotator = Rotator.new

    assert_equal 4, rotator.rotation.length
  end

  def test_it_rotates_key
    rotator = Rotator.new
    offset = Offset.new

    assert_equal ("#{rotator.key[0]}#{rotator.key[1]}".to_i+ offset.zero), rotator.rotation[0]
    refute_equal rotator.key, rotator.rotation
  end
end
