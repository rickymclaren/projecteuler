#! /usr/bin/ruby
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def gcd(a, b)	# Greatest common Divisor
   puts "gcd #{a} #{b}"
   if (b == 0)
      a
   else
      gcd(b, a%b)
   end
end

def lcm(a, b)	# Least Common Multiple - Wikipedia
   puts "lcm #{a} #{b}"
   (a * b) / gcd(a,b)
end

# Inject with no initial param sets memo to first list value and then injects the remaining list values.
# inject(initial) would set memo to initial then inject all values from list.
puts (1..20).inject { |memo,x| lcm(memo,x) }
