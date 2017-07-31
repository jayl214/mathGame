require'./classPlayer'
require'./classTurn'
require'./classQuestion'
require'./classResult'


# initialize game
p1 = Player.new('Player 1')
p2 = Player.new('Player 2')
playerAry = [p1, p2]
turnTracker = Turn.new(playerAry)

# start game
while p1.lives > 0 && p2.lives > 0

  puts turnTracker.newTurn

  question = Question.new()

  puts "#{playerAry[0].name}: #{question.problem}"
  playerResponse = gets.chomp.to_i

  correctness = (playerResponse == question.answer)

  result = Result.new( correctness )
  puts result.response

  if correctness == false
    playerAry[0].loseLife
  end

  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3 "

  turnTracker.changeTurn

end

if p1.lives == 0
  puts p2.gameOver
elsif p2.lives == 0
  puts p1.gameOver
end

