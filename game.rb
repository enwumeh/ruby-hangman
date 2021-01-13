class Hangman

  def initialize
    @letterz = ('a'..'z').to_a
    @word = wordz.sample
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
    tease = tease + '__'
  end

  def start 
#ask user for one letter 
puts "New game has begun!"
puts "Your word is #{ @word.first.size } letters long"


puts "Here is your clue: #{ @word.last }"
puts "type a letter!"
guess = gets.chomp

puts "You guessed #{guess}"
  end

end

game = Hangman.new
game.start