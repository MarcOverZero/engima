require './test/test_helper'
require './lib/crack'


class CrackTest < Minitest::Test

  def test_it_exists
    crack = Crack.new(message, Date.today)

    assert_instance_of Crack, crack
  end

  def test_it_can_crack
    encrypted_message = Enigma.new.encrypt("this is so secret ..end..")
    crack = Crack.new(encrypted_message, Date.today)

    message = "this is so secret ..end..", crack.cracker

    assert

  end
  # > e.crack(output, Date.today)
  # => "this is so secret ..end.."


end
