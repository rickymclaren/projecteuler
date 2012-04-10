#! /usr/bin/ruby
# Starting in the top left corner in a 20 by 20 grid, how many routes are there to the bottom right corner?
#
# These is almost quicker to code than explain. The trick is the phrase "Without backtracking"
#
# Imagine the 2x2 grid rotated clockwise to make a diamond and you can only move down.
# Working from the bottom up, count the number of options to move to the target (0).
# The outside values are 1 and the inner values are the sum of the two below. So we get
#
#           6
#          3 3
#         1 2 1
#          1 1
#           0
#
# Extend to a 4x4 grid and then rotate the diamond counter-clockwise back to a square and you get
#
#   70  35  15  5  1
#   35  20  10  4  1
#   15  10   6  3  1
#    5   4   3  2  1
#
# Each cell is the sum of the cell to the right and the one below. 
# Apart from the rightmost column which is always 1.

$LIMIT = 20
result = []
prev = 0
$LIMIT.times do |i|
   if i == 0
      ($LIMIT+1).times { |x| result << x+1 }
   else
      result.map! do |x| 
         if x == 1
            prev = 1 
         else
            prev = x + prev
         end
      end
   end
end
puts result[-1]

