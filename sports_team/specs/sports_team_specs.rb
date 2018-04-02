require('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup()
      @sports_team = SportsTeam.new("Hawks",["Dave", "Mike", "Gary"] , "Clint Jones")

  end

  def test_team_name
    assert_equal("Hawks", @sports_team.team_name)
  end

  def test_players

    assert_equal(["Dave", "Mike", "Gary"], @sports_team.players)
  end

  def test_coach

    assert_equal("Clint Jones", @sports_team.coach)
  end

  def test_set_coach_name
    @sports_team.set_coach("Bob")
    assert_equal("Bob", @sports_team.coach)
  end

end
