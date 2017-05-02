class Game
  def self.play move1, move2
    return :tie if move1 == move2
    move2.can_win_against? move1
  end
end

class Rock
  def can_win_against? other_move
    other_move.do_you_beat_rock?     
  end

  def do_you_beat_scissors?
    true
  end

  def do_you_beat_paper?
    false
  end
end

class Paper
  def can_win_against? other_move
    other_move.do_you_beat_paper?
  end

  def do_you_beat_rock?
    true
  end

  def do_you_beat_scissors?
    false
  end
end

class Scissors
  def can_win_against? other_move
    other_move.do_you_beat_scissors?
  end

  def do_you_beat_paper?
    true
  end

  def do_you_beat_rock?
    false
  end  
end

p Game.play( Rock.new, Scissors.new )