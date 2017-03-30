require 'pry'
class Offset
attr_reader :date
attr_accessor :zero, :one, :two, :three
  def initialize(date = Date.today)
    @date = date.strftime("%d%m%y")
    @zero = offset_collection[0]
    @one = offset_collection[1]
    @two = offset_collection[2]
    @three = offset_collection[3]
  end

  def run
    last_four_digits
    offset_collection
  end

  def last_four_digits
    square = @date.to_i ** 2
    last = square.to_s[-4..-1]
    last.each_char.to_a
  end

  def offset_collection
    last_four_digits.map do |i|
      i.to_i
    end
  end
end
