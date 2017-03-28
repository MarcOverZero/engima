require 'pry'
require './lib/offset'

class Key
  attr_reader :offset

  def initialize
    @offset = Offset.new
  end

  def cut_key
    5.times.map { (0..9).to_a.sample }
  end
end
