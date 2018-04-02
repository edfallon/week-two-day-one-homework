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
    @sports_team.coach = "Bob"
    assert_equal("Bob", @sports_team.coach)
  end

  def test_new_player_added
    @sports_team.new_player("Tom")
    assert_equal(["Dave", "Mike", "Gary", "Tom"], @sports_team.players)
  end

  def test_check_for_players_names
    assert_equal(true, @sports_team.check_players_array("Dave"))
  end

  def test_points
    assert_equal(0, @sports_team.points)
  end
end
