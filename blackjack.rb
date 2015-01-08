puts "Welcome to Blackjack!"
class Blackjack
  def initialize
    @player = Player.new
  end

  def play
    while @player.cards.money > 10 do
      card_one = @player.cards.draw
      card_two = @player.cards.draw
      puts "Your total is [#{card_one} + #{card_two}]"
      puts "Would you like another card? (y or n)?"
        user_answer = gets.chomp
        if user_answer.downcase == y
          puts "Okay, here's your new card. Good luck"
          @player.cards.hit
          puts "Your new total is [#{card_one} + #{card_two} + {card_three}]"
        else
          puts "You chose to stay! Thanks for playing."
        end
    end
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


