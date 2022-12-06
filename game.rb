require "./player"
require "./board"


class Game
    attr_accessor :p1, :p2, :board, :current_player, :gameover
    
    def initialize
        @p1=Player.new("player1","○")
        @p2=Player.new("player2","×")
        @board=Board.new
        @current_player=p1
        @gameover=false
    end

    def play
        board.intro
        puts
        board.grids
        until gameover
            puts
            select_num
            check_board
            change_player
        end
    end
    
    def select_num
        puts "#{current_player.name}: select a number"
        num_selected=gets.chomp.to_i
        board.update_grid(num_selected,current_player.symbol)
        puts
        board.grids
    end
    
    def check_board
        if board.win?(current_player.symbol)
            @gameover=true
            puts "#{current_player.name} wins!"
       elsif board.board_full
            @gameover=true
            puts "board is full. Draw!" 
       end
    end

    def change_player
        @current_player==p1 ? @current_player=p2 : @current_player=p1
    end
   
end