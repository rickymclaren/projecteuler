#! /usr/bin/ruby
# Find the sum of the digits in the number 100!
#

puts (1..100).reduce {|memo, x| memo *= x}.to_s.split("").map {|s| s.to_i}.reduce {|memo, x| memo += x} 
