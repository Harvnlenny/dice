require "./dice"

class Player 
  def initialize (name, dice) 
    @name = name
    @dice = dice
  end
  
  def dice
    @dice
  end  
end  

class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 0
  end

  def play!
    tie = true
    until tie == false
      player_1_roll = @player_1.dice.roll
      player_2_roll = @player_2.dice.roll
      if player_1_roll > player_2_roll
        @winner = @player_1
        tie = false
        @turn += 1
      elsif
        player_2_roll > player_1_roll
        @winner = @player_2
        tie = false
        @turn += 1
      else
        @turn += 1  
      end
    end
  end

  def winner
    @winner    
  end 

  def turn
    @turn
  end  
end   

