class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    if @hand1 == "rock" && @hand2 == "scissors" ||
       @hand1 == "scissors" && @hand2 == "paper" ||
       @hand1 == "paper" && @hand2 == "rock"
      return "#{@hand1} wins!"
    elsif @hand1 == "rock" && @hand2 == "paper" ||
          @hand1 == "scissors" && @hand2 == "rock" ||
          @hand1 == "paper" && @hand2 == "scissors"
      return "#{@hand2} wins!"
    elsif @hand1 == "rock" && @hand2 == "rock" ||
          @hand1 == "scissors" && @hand2 == "scissors" ||
          @hand1 == "paper" && @hand2 == "paper"
      return "It's a draw!"
    end
  end

end