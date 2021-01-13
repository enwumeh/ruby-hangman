class Hangman

  def initialize
    @letterz = ('a'..'z').to_a
    @word = wordz.sample
    @lives = 7
    @correctly_guessed
  end

  def wordz
    [
      ['chicken', 'the most delicious poultry'],
      ['coronavirus', 'a virus that recently caused a pandemic'],
      ['asia', 'the most populous continent'],
      ['bush', '43rd president of the united states'],
      ['michael jackson', 'the king of pop'],
      ['football', 'what soccer is called in most other countries ']
    ]
  end

  def tease_word 
    tease = ''

    @word.first.size.times do 
    tease = tease + '_'
  end

  puts tease
  end 

  def user_guess
    if @lives > 0
    puts "type a letter!"
    guess = gets.chomp

    #if the guessed letter is not part of the word..
    correct_guess = @word.first.include? guess

    if correct_guess
      puts "yes good job!!"
     
      @correctly_guessed << guess

      @letterz.delete guess
      tease_word
      user_guess

    else 
      @lives -= 1
      puts "Oops, try again! You have #{ @lives } left"
      user_guess
  end
else
   puts "game over"
end 

  def start 
#ask user for one letter 
puts "New game has begun!"
puts "Your word is #{ @word.first.size } letters long"


puts "Here is your clue: #{ @word.last }"


puts "You guessed #{guess}"
  end

end

game = Hangman.new
game.start