require 'minitest/autorun'
require_relative '../models/rock_paper_scissors.rb'

class TestGame < Minitest::Test
  def setup
    @game1 = Game.new("rock", "scissors")
    @game2 = Game.new("rock", "paper")
    @game3 = Game.new("rock", "rock")
  end

  def test_games
    assert_equal("rock wins!", @game1.play)
    assert_equal("paper wins!", @game2.play)
    assert_equal("It's a draw!", @game3.play)
  end
end
