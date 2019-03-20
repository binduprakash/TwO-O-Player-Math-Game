class Player
    attr_reader :name, :no_of_lives, :short_name

    def initialize(name, short_name, no_of_lives)
        @name = name
        @short_name = short_name
        @no_of_lives = no_of_lives
    end

    def lostGame()
        if (@no_of_lives > 0)
            @no_of_lives -= 1
        end
    end
end