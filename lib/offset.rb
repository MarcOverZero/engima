require 'pry'
require 'Date'
class Offset
attr_reader :date
attr_accessor :zero, :one, :two, :three
  def initialize(date = Date.today)
    @date = date
    @zero = offset_collection[0]
    @one = offset_collection[1]
    @two = offset_collection[2]
    @three = offset_collection[3]
  end

  def run
    format_date
    last_four_digits
    offset_collection
  end

  def format_date
    date_string = date.to_s.delete "-"
    date_string[6..7] + date_string[4..5] + date_string[2..3]
  end

  def last_four_digits
    square = format_date.to_i**2
    last = square.to_s[-4..-1]
    last.each_char.to_a
  end

  def offset_collection
    last_four_digits.map do |i|
      i.to_i
    end
  end
end

Offset.new.run

'-'
