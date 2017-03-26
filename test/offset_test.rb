require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset , offset
  end

  def test_it_can_return_date_digits
    offset = Offset.new.date

    assert_equal 8, offset.length
  end

  # def test_it_can_reformat
  #   offset = Offset.new
  #   date = Date.today.to_s.delete "-"
  #
  #   assert_equal 6, offset.date.length
  #   assert_equal "260317", offset.format_date
  #
  # end

end
