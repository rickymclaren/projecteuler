#! /usr/bin/ruby
# Find the sum of all the even numbers in the fibonacci series below 4 million

series = [1,2]
while series[-1] < 4000000
  series << series[-1] + series[-2]
end

puts series.select {|i| i % 2 == 0}.reduce {|sum, x| sum + x }
