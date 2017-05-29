# my solution
def done_or_not(board)

status= 'Finished!'
#   check rows
board.each do |row|
  if row.uniq.length != 9
    status =  'Try again!'
#     break
  end
end
# check columns
  i_array = [0,1,2,3,4,5,6,7,8]
  i_array.each do |i|
    column = []
    board.each do |row|
      column << row[i]
    end
    if column.uniq.length != 9
      status = "Try again!"
    end
  end
# check 3x3 squares
top_boxes = [[],[],[]]
board[0..2].each do |row|
  top_boxes[0] += row[0..2]
  top_boxes[1] += row[3..5]
  top_boxes[2] += row[6..8]
end

middle_boxes = [[],[],[]]
board[3..5].each do |row|
  middle_boxes[0] += row[0..2]
  middle_boxes[1] += row[3..5]
  middle_boxes[2] += row[6..8]
end

bottom_boxes = [[],[],[]]
board[3..5].each do |row|
  bottom_boxes[0] += row[0..2]
  bottom_boxes[1] += row[3..5]
  bottom_boxes[2] += row[6..8]
end

all_boxes=top_boxes+middle_boxes+bottom_boxes
all_boxes.each do |box|
 if box.uniq.length != 9
   status = "Try again!"
 end
end

status
end
