#! /usr/bin/ruby
# Find the sum of all numbers from 1 to 999 that are multiples of 3 or 5

puts (1..999).select {|i| i % 3 == 0 || i % 5 == 0}.reduce {|sum, x| sum + x }
