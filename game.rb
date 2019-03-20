require './player'
class Game
    attr_reader :player1, :player2, :current_player, :initial_lives

    def initialize(initial_lives)
        @initial_lives = initial_lives
        @player1 = Player.new("Player 1", "P1", @initial_lives)
        @player2 = Player.new("Player 2", "P2", @initial_lives)
        @current_player = player1
    end

    def play()
      while @player1.no_of_lives > 0 && @player2.no_of_lives > 0 do
        random1 = 1 + rand(20)
        random2 = 1 + rand(20)
        puts "#{@current_player.name}: What does #{random1} plus #{random2} equal?"
        ans = gets.chomp.to_i
        if (ans == random1 + random2)
            puts "#{@current_player.name}: YES! You are corret."
        else
            @current_player.lostGame
            puts "#{@current_player.name}: Seriously? No!"
        end

        if (@current_player.no_of_lives > 0)
            puts "#{@player1.short_name}: #{player1.no_of_lives}/#{@initial_lives} vs #{@player2.short_name}: #{@player2.no_of_lives}/#{@initial_lives}"
            puts "----- NEW TURN -----"
            if (@current_player == @player1)
                @current_player = @player2
            else
                @current_player = @player1
            end
        else
            if(@player1.no_of_lives > 0)
                puts "#{@player1.name} wins with a score of #{@player1.no_of_lives}/#{@initial_lives}"
                puts "----- GAME OVER -----"
            else
                puts "#{@player2.name} wins with a score of #{@player2.no_of_lives}/#{@initial_lives}"
                puts "----- GAME OVER -----"
            end
            puts "Good bye!"
        end
      end  
    end
end
