require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset , offset
  end

  def test_it_can_return_date_digits
    offset = Offset.new.date

    assert_equal 6, offset.length
  end

  def test_it_can_be_supplied_a_date
    offset = Offset.new(Date.new(2057, 03, 17)).date


    assert_equal 6, offset.length
    assert_equal "170357", offset
  end

  # def test_it_can_reformat
  #   offset = Offset.new
  #   date = Date.today.to_s.delete "-"
  #
  #   assert_equal 6, offset.date.length
  #   assert_equal "260317", offset.format_date
  #
  # end
  def test_it_can_take_last_four
    offset = Offset.new(Date.new(2057, 03, 17))
    actual = offset.last_four_digits
    expected = ['7','4','4','9']
    assert_equal expected, actual
  end

  def test_it_can_turn_strings_into_integers
    offset = Offset.new(Date.new(2057, 03, 17))
    actual = offset.offset_collection
    expected = [7, 4, 4, 9]
    assert_equal expected, actual
  end

end
