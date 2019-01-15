require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

# def setup()
#   @players = ["kim", "mik", "some"]
#   @team = Team.new("G11 Gophers", players, "John steven")
# end

# def setup allows us to call upon instnance vriables at any time.



class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Ravens", ["Jimmy", "Sally", "Sam"], "Mr.Angry", 0)
    assert_equal("Ravens", team.team_name)
  end

  def test_players_name
    team = SportsTeam.new("Something United", ["Steve", "Brain", "Angus"], "Mr.Very Angry", 0)
    assert_equal(["Steve", "Brain", "Angus"], team.players)
  end

  def test_coach_name
    team = SportsTeam.new("Ducks", ["Daffy", "Donald", "Mike"], "Mr.Mac Duck", 0)
    assert_equal("Mr.Mac Duck", team.coach_name)
  end

 def test_set_coach_name
   team = SportsTeam.new("Ravens", ["Jimmy", "Sally", "Sam"], "Mr.Angry", 0)
   team.coach_name = "Mr. Not So Angry"
   assert_equal("Mr. Not So Angry", team.coach_name)
 end



def test_add_players
  team = SportsTeam.new("Something United", ["Steve", "Brain"], "Mr.Very Angry", 0)
  result = team.add_players("Angus")
  assert_equal(3, result.length)
end


def test_check_players_name
  team = SportsTeam.new("Ducks", ["Daffy", "Donald", "Mike"], "Mr.Mac Duck", 0)
  result = team.check_players_name("Donald")
  assert_equal("Presant", result)
end


def test_wins
  team = SportsTeam.new("Ravens", ["Jimmy", "Sally", "Sam"], "Mr.Angry", 0)
  result = team.wins("win")
  assert_equal(1, result)
end






end
