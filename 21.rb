#! /usr/bin/ruby
# Evaluate the sum of all amicable pairs under 10000.
#

def d(x)
   result = [1]
   (2..(x/2)).each {|d| result << d if x % d == 0}
   result.reduce {|sum, x| sum += x}
end

amicable = []
(1..9999).each do |x|
   p = d(x)
   amicable << x if p != x && d(p) == x
end
puts amicable.join ","
puts amicable.reduce {|sum,x| sum += x}


