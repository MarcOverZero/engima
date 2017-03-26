require 'pry'

class Key
  attr_reader :blank_key, :cut_key, :a, :b, :c, :d
  def initialize
    @blank_key = [0,0,0,0,0]
    @a = "#{cut[0]}#{cut[1]}".to_i
    @b = "#{cut[1]}#{cut[2]}".to_i
    @c = "#{cut[2]}#{cut[3]}".to_i
    @d = "#{cut[3]}#{cut[4]}".to_i
  end

  def cut
    seed = (0..9).to_a
    @cut_key = @blank_key.map do |i|
      i + seed.sample
    end
  end

  def puts_driven
    puts @a
  end

  def run
    cut
    puts_driven
  end
binding.pry
end

Key.new.run
