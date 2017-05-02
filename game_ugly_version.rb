class Game
  def self.play move1, move2
    return :tie if move1 == move2 
    case move1
    when 'Rock' then case move2
                     when 'Scissors' then true
                     when 'Paper' then false
                     end
    when 'Scissors' then case move2
                         when 'Rock' then false
                         when 'Paper' then true
                         end
    when 'Paper' then case move2
                      when 'Rock' then true
                      when 'Scissors' then false
                      end
    end
  end
end

p Game.play 'Rock', 'Scissors'