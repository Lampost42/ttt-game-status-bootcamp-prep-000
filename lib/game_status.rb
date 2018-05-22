# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [2,4,6],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [0,3,6],
  [0,1,2],
  [1,4,7],
  [2,5,8]
  ]
  def won?(board)
    WIN_COMBINATIONS.each do |combo|
      if (combo.all? {|space| board[space] == "X"}) || if (combo.all? {|space| board[space] == "O"})
        return combo
      end
    end
    return FALSE
  end
      