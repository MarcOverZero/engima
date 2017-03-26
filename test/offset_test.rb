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

  def test_it_can_reformat
    today = Offset.new.format_date

    assert_equal 6, today.length
    assert_equal "17", today[4..5]
    assert_equal "03", today[2..3]
  end

end
