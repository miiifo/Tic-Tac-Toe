require "./game"

def play_round
    game=Game.new
    game.play
    replay_game
end

def replay_game
    puts "try again? (y/n)"
    answer=gets.chomp.downcase
    if answer=="y"
        play_round
    end
end

play_round