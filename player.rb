class Player

    attr_accessor :name, :symbol, :position

    def initialize(name,symbol)
        @name=name
        @symbol=symbol
    end

    def get_symbol
        puts @symbol
    end

end 