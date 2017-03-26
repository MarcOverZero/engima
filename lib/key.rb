require 'pry'
require './lib/offset'

class Key
  attr_reader :blank_key, :cut_key, :offset
  attr_accessor :a, :b, :c, :d
  def initialize
    @cut_key = 5.times.map { (1..9).to_a.sample }
    @offset = Offset.new
    # @a = "#{cut[0]}#{cut[1]}".to_i
    # @b = "#{cut[1]}#{cut[2]}".to_i
    # @c = "#{cut[2]}#{cut[3]}".to_i
    # @d = "#{cut[3]}#{cut[4]}".to_i
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

  def run
    cut_key
  end
binding.pry
end

key_1 = Key.new.run
Key.new
