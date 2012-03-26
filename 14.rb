#! /usr/bin/ruby
# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# 
# Which starting number, under one million, produces the longest chain?

$LIMIT=1000000
$cache = Array.new($LIMIT,0)
$cache[1] = 1

def nxt(x)
   return x / 2 if x % 2 == 0
   3 * x + 1
end

def chain(x)
   return 1 + chain(nxt(x)) if x >= $LIMIT	# recurse if too big for cache
   return $cache[x] if $cache[x] > 0		# is it already cached?
   $cache[x] = 1 + chain(nxt(x))		# cache it
end

1.upto(999999) { |x| chain(x) }
max = $cache.max
puts (1..999999).select { |x| $cache[x] == max }


