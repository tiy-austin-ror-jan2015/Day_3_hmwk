puts "Welcome to Blackjack!"
puts "You have $100, but it's a $10 fee per game."
puts "Let's play!"
class BlackJack
  def initialize
    @player = Player.new
  end

  def play
    def initialiaze
      @user_answer = gets.chomp
    end
    while @player.money > 10 do
      @player.money -= 10
      puts "Now you have $#{@player.money}"
      card_one = @player.cards.hit
      card_two = @player.cards.hit
      card_three = @player.cards.hit
      puts "Your total is #{card_one + card_two}"
      puts "Would you like another card? (y or n)?"
      @user_answer = gets.chomp
        if @user_answer == "y"
          puts "Okay, here's your new card. Good luck"
          @player.cards.hit
          puts "Your new total is #{card_one + card_two + card_three}"
        else
          puts "You chose to stay! Thanks for playing."
        end
    end
  end
#I know I still need to set it up for the game to continue...
  def sum_player_hand(player_hand)
    player_hand.reduce(:+)
  end
end

class Player
  attr_accessor :cards, :money, :total
  def initialize
    @cards = Deck.new
    @money = 100
    @total = 0
  end



class Deck
  attr_reader :cards
  def initialize
    faces = [10] * 4
    aces = [11] * 4
    @cards = ((2..9).to_a * 4).concat(faces).concat(aces).shuffle
  end

  def total
    @cards.count
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def deal
    @cards.shift(2)
  end

  def hit
    @cards.shift
  end
end
end

BlackJack.new.play


