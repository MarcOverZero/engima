require 'pry'
require 'Date'

class Offset
attr_reader :a, :b, :c, :d
  def initialize
    @a = offset_collection[0]
    @b = offset_collection[1]
    @c = offset_collection[2]
    @d = offset_collection[3]
  end
  #
  def run
    date
    format_date
    four
    offset_collection
  end

  def date
    Date.today.to_s.delete "-"
  end

  def format_date
    date[6..7] + date[4..5] + date[2..3]
  end

  def four
    square = format_date.to_i**2
    last = square.to_s[-4..-1]
    last.each_char.to_a
  end

  def offset_collection
    four.map do |i|
      i.to_i
    end
  end
end

Offset.new.run

'-'
