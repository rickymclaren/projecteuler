#! /usr/bin/ruby
# What is the value of the first triangle number to have over five hundred divisors?

require 'mathn'

def divisors(x)
   count = 2
   (2..Math.sqrt(x)).each do |d|
      count += 1 if x % d == 0
   end
   count * 2
end

tri = 3
inc = 2
not_found = true

while not_found do
   not_found = false if divisors(tri) > 500
   if not_found
      inc += 1
      tri += inc
   end
end

puts tri



