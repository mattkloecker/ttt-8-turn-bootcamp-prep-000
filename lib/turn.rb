def display_board(board="")
  rows = [" #{board[0]} | #{board[1]} | #{board[2]} ",\
  " #{board[3]} | #{board[4]} | #{board[5]} ",\
  " #{board[6]} | #{board[7]} | #{board[8]} "]
  puts "#{rows[0]}\n-----------\n#{rows[1]}\n-----------\n#{rows[2]}"

end

def input_to_index(input="-1")
  input=(input.to_i) - 1;

end

def valid_move?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil && index.between?(0, 8)
    return true
  end
  if board[index] == "X" || board[index] == "O"
    return false
  end
end

def move(board, index, value="X")
  return board[index]=value
end
