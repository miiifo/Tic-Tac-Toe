class Board
    attr_accessor :nums

    def initialize
        @nums=[1,2,3,4,5,6,7,8,9]
        @combos=[[nums[0],nums[1],nums[2]],[nums[3],nums[4],nums[5]],[nums[6],nums[7],nums[8]],[nums[0],nums[3],nums[6]],[nums[1],nums[4],nums[7]],[nums[2],nums[5],nums[8]],[nums[0],nums[4],nums[8]],[nums[2],nums[4],nums[6]]]
    end

    def grids
        row1="#{nums[0]} | #{nums[1]} | #{nums[2]}"
        row2="#{nums[3]} | #{nums[4]} | #{nums[5]}"
        row3="#{nums[6]} | #{nums[7]} | #{nums[8]}"
        separator="--+---+--"
        puts row1,separator,row2,separator,row3
    end

    def intro
        puts
        puts "tic tac toe!"
    end

    def update_grid(num,symbol)
        nums.map! do |e| 
            if e==num
                symbol
            else e
            end
        end
    end

    def win?(symbol)
        combos=[[nums[0],nums[1],nums[2]],[nums[3],nums[4],nums[5]],
        [nums[6],nums[7],nums[8]],[nums[0],nums[3],nums[6]],[nums[1],nums[4],nums[7]],
        [nums[2],nums[5],nums[8]],[nums[0],nums[4],nums[8]],[nums[2],nums[4],nums[6]]]
        
        combos.any? do  |combo|
            combo.all? {|e| e==symbol}
        end
    end

    def board_full
       nums.all? {|e| e.class==String}
    end
end