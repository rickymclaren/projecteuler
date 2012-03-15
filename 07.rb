#! /usr/bin/ruby
# The 6th prime number is 13. What is the 10,001st?

require 'mathn'

# Use built in Prime
prime = 0
p = Prime.new
10001.times { prime = p.succ() }
puts prime

# Use seive

LIMIT = 6
primes = Array.new(LIMIT+1, true) 

(2..(Math.sqrt LIMIT)).each do |x|
   if primes[x]
      y = x * 2
      while y <= LIMIT
         primes[y] = false
         y += x
      end
   end
end

count = 0
(1..LIMIT).each do |x| 
   if primes[x]
      count += 1
      puts primes[x] if count == 6
   end
end



