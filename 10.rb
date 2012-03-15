#! /usr/bin/ruby
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# The Prime generator in ruby 1.8 is too slow over about 100000 primes
# Had to write a Seive of Erasthones to go faster

limit=2000000
seive = Array.new(limit+1, true)

(2..limit).each do |x|
   if seive[x]
      i = x * 2
      while i <= limit
         seive[i] = false
         i += x
      end
   end
end

primes = []
(2..limit).each { |x| primes << x if seive[x] }

puts primes.inject {|memo, x| memo + x }
