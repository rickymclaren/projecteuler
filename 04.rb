#! /usr/bin/ruby 
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome?(x)
   "#{x}" == "#{x}".reverse
end

max = 0
(100..999).each do |x|
   (100..999).each do |y|
      product = x * y
      max = product if product > max and is_palindrome?(product)
   end
end

puts max
