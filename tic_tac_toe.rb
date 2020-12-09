#declares all spot variables.
$state_of_board = [1,2,3,4,5,6,7,8,9]
$j = 0

#method for checking if space is available or even a valid input




#checks who's turn it is and plays that turn
def turn_check(turn_checker)
    def x_board_change(num)
        def space_check (space,board_state)
            if board_state.include?(space)
                return true
            else
                puts "You've entered an invalid space option."
                $i -= 1
                return false
            end
        end
    
    
        puts " #{num[0]} | #{num[1]} | #{num[2]}\n-----------\n #{num[3]} | #{num[4]} | #{num[5]}\n-----------\n #{num[6]} | #{num[7]} | #{num[8]}"
    
        puts "Player one, please choose a location for your X."
    
        x = gets.chomp
        x_int = x.to_i
    
        if space_check(x_int,num) == true
        space_index = num.index(x_int)
        num[space_index] = "X"
        $j = 1
        end
        return num
    end
    
    
    #method for placing O on board
    def o_board_change (num)
        def space_check (space,board_state)
            if board_state.include?(space)
                return true
            else
                puts "You've entered an invalid space option."
                $i -= 1
                return false
            end
        end
    
        puts " #{num[0]} | #{num[1]} | #{num[2]}\n-----------\n #{num[3]} | #{num[4]} | #{num[5]}\n-----------\n #{num[6]} | #{num[7]} | #{num[8]}"
    
        puts "Player one, please choose a location for your O."
    
        o = gets.chomp
        o_int = o.to_i
        
        if space_check(o_int,num) == true
        space_index = num.index(o_int)
        num[space_index] = "O"
        $j = 0
        end
        return num
    end

    if $j == 0
    turn_checker = x_board_change(turn_checker)
    elsif $j == 1
    turn_checker = o_board_change(turn_checker)
    end
    
return turn_checker
end

#method for placing X on board

#method for checking if a winning move has been played.  Also checks for tie.



#counts each space still available.  If zero ends game and declares a tie.

def tie_game(board)
    k = 0
    board.each{|space|
    if space.class == Integer
    k += 1
    end
    }
    if k == 0 
        puts " #{board[0]} | #{board[1]} | #{board[2]}\n-----------\n #{board[3]} | #{board[4]} | #{board[5]}\n-----------\n #{board[6]} | #{board[7]} | #{board[8]}"
    puts "No available spaces remain.  Game is a TIE."
    exit
    end
end


#checks for the 8 winning combination for both x's and o's
def win_game(board)
    final_board = " #{board[0]} | #{board[1]} | #{board[2]}\n-----------\n #{board[3]} | #{board[4]} | #{board[5]}\n-----------\n #{board[6]} | #{board[7]} | #{board[8]}"
    if board[0] == board[1] && board[1] == board[2]
        puts final_board
        puts "CONGRATULATIONS #{board[0]} WINS"
        exit
    elsif board[3] == board[4] && board[4] == board[5]
        puts final_board
        puts "CONGRATULATIONS #{board[3]} WINS"
        exit
    elsif board[6] == board[7] && board[7] == board[8]
        puts final_board
        puts "CONGRATULATIONS #{board[6]} WINS"
        exit   
    elsif board[0] == board[3] && board[3] == board[6]
        puts final_board
        puts "CONGRATULATIONS #{board[0]} WINS"
        exit 
    elsif board[1] == board[4] && board[4] == board[7]
        puts final_board
        puts "CONGRATULATIONS #{board[1]} WINS"
        exit   
    elsif board[2] == board[5] && board[5] == board[8]
        puts final_board
        puts "CONGRATULATIONS #{board[2]} WINS"
        exit
    elsif board[0] == board[4] && board[4] == board[8]
        puts final_board
        puts "CONGRATULATIONS #{board[0]} WINS"
        exit
    elsif board[0] == board[4] && board[4] == board[8]
        puts final_board
        puts "CONGRATULATIONS #{board[0]} WINS"
        exit
    elsif board[2] == board[4] && board[4] == board[6]
        puts final_board
        puts "CONGRATULATIONS #{board[2]} WINS"
        exit       
    end
end




$i = 0
while $i < 9 do
$state_of_board = turn_check($state_of_board)
win_game($state_of_board)
tie_game($state_of_board)
    $i += 1
end



#CHECK HOW TO CHANGE VALUE OF ARRAY DURING AN EACH ENUMERABLE METHOD

#reprint board using num array elements

#prompt player 2, check for overlapping checks, and repeat board method

#check for winning set.  