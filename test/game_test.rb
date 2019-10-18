require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_initialization
    assert_equal 'grrb', @game
    assert_equal 0, @turns
  end

end
