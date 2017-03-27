require 'pry'
require './lib/offset'

class Key
  attr_reader :blank_key, :cut_key, :offset
  attr_accessor :a, :b, :c, :d
  def initialize
    @cut_key = 5.times.map { (0..9).to_a.sample }
    @offset = Offset.new
  end

  def a_rotation
    @a = "#{@cut_key[0]}#{@cut_key[1]}".to_i + @offset.a
  end

  def b_rotation
    @b = "#{@cut_key[1]}#{@cut_key[2]}".to_i + @offset.b
  end

  def c_rotation
    @c = "#{@cut_key[2]}#{@cut_key[3]}".to_i + @offset.c
  end

  def d_rotation
    @d = "#{@cut_key[3]}#{@cut_key[4]}".to_i + @offset.d
  end

  def rotated_key
    [@a, @b, @c, @d]
  end

  # def run
  #   cut_key
  # end
end
