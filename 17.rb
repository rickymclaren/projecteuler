#! /usr/bin/ruby
# How many letters would be needed to write all the numbers in words from 1 to 1000?
#

units = {
   0 => "",
   1 => "one",
   2 => "two",
   3 => "three",
   4 => "four",
   5 => "five",
   6 => "six",
   7 => "seven",
   8 => "eight",
   9 => "nine"
}

tens = {
    0 => "",
   10 => "ten",
   20 => "twenty",
   30 => "thirty",
   40 => "forty",
   50 => "fifty",
   60 => "sixty",
   70 => "seventy",
   80 => "eighty",
   90 => "ninety"
}

hundreds = {
   0 => "",
   100 => "onehundredand",
   200 => "twohundredand",
   300 => "threehundredand",
   400 => "fourhundredand",
   500 => "fivehundredand",
   600 => "sixhundredand",
   700 => "sevenhundredand",
   800 => "eighthundredand",
   900 => "ninehundredand"
}

teens = {
   10 => "ten",
   11 => "eleven",
   12 => "twelve",
   13 => "thirteen",
   14 => "fourteen",
   15 => "fifteen",
   16 => "sixteen",
   17 => "seventeen",
   18 => "eighteen",
   19 => "nineteen"
}


numbers = []
(1..999).each do |x|
   h = (x - (x%100))
   t = (x - h - (x%10))
   u = x % 10

   n = hundreds[h] + teens[t+u] if t == 10
   n = hundreds[h] + tens[t] + units[u] if t != 10
   n = n[0..-4] if n.end_with? "and"

   numbers << n
end
numbers << "onethousand"

puts numbers.join("").length


