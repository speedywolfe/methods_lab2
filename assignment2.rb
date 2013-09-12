# Part3-a: Rock Paper Scissors game winner
class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)
    	raise WrongNumberOfPlayersError unless game.length == 2
	valid = ["r","p","s"]	
	a1=[(game[0][1]).downcase]
 	a2=[(game[1][1]).downcase]
	raise NoSuchStrategyError unless (valid & a1) && (valid & a2)   

	return (game[0]) if a1 === a2
	  case (a1[0])
	  when "r"
	    case (a2[0])
	    when "p"
	      return (game[1])
	    else 
	      return (game[0])
	    end
	  when "p"
	    case (a2[0])
	    when "s"
	      return (game[1])
	    else
	      return (game[0])
	    end
	  when "s"
	    case (a2[0])
	    when "r"
	      return (game[1])
	    else 
	      return (game[0])
	    end
	end	
end

# Part3-b
def rps_tournament_winner(tournament)
    if tournament[0][0].is_a? String
        return rps_game_winner(tournament)
    end
    return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end

array = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

# p rps_tournament_winner(array)

#Part4: Anagrams
def combine_anagrams(words)
ash = Hash.new
  words.each do |str|
     sorted = str.chars.sort.join
     if (hash[sorted]== nil)
       hash[sorted] = Array.new
     end
     arr = hash[sorted]
     arr[arr.length] = str
     hash[sorted] = arr
     arr = nil
  end
 
  hash.values
end

words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
p combine_anagrams(words)

