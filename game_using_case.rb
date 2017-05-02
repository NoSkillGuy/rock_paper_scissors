class Game
  def self.play move1,move2
    return :tie if move1 == move2
    move1.can_win_against?(move2)
  end
end

class Rock
  def can_win_against?(other_move)
    case other_move
    when Paper then true
    when Scissors then false
    end
  end
end

class Paper
  def can_win_against?(other_move)
    case other_move
    when Rock then true
    when Scissors then false
    end
  end
end

class Scissors
  def can_win_against?(other_move)
    case other_move
    when Paper then true
    when Rock then false
    end
  end
end

p Game.play(Rock.new,Paper.new)
p Game.play(Rock.new,Rock.new)