#! /usr/bin/ruby
# The 6th prime number is 13. What is the 10,001st?

require 'mathn'

# Use built in Prime
prime = 0
p = Prime.new
10001.times { prime = p.succ() }
puts prime

