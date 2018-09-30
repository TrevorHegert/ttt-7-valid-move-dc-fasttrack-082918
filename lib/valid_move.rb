# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board,index) == true && on_board?(board_index) == true
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil && on_board?(board, index) == true
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def on_board?(board, index)
  if index.to_i >= 0 && index.to_i <= 8
    true
  else
    false
  end
end
