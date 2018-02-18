def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return (input.to_i - 1)
end

def valid_move?(board,index)
  if 0 <= index && index <= 8 && board[index] != "X" && board[index] != "O"
    return true
  else
    return false
  end
end

def move(board,index,char="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    puts "Invalid move! Try again."
    turn(board)
  end
end