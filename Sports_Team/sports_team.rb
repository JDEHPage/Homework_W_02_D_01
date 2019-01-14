require('pry')

class SportsTeam

attr_accessor :team_name, :players, :coach_name, :points

def initialize(team_name, players, coach_name, points)
  @team_name = team_name
  @players = players
  @coach_name = coach_name
  @points = points = 0
end

# def team_name
#   return @team_name
# end
#
# def players_name
#   return @players
# end
#
# def coach_name
#   return @coach_name
# end
#
#
# def set_coach_name(new_coach)
#   @coach_name  = new_coach
# end


def add_players(new_player)
  return @players.push(new_player)
end


def check_players_name(player_name)
  if @players.include?(player_name)
    return "Presant"
  else
    return "Not presant"
  end
end




def wins(win_or_loose)
  if win_or_loose == "win"
    return @points += 1
  else
    return @points
  end
end



# Part B

# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.



end
