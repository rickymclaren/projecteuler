#! /usr/bin/ruby
# What is the total of all the name scores in the file of first names?
#

names = File.new("names.txt").read[1..-2].split('","').sort

index = 0
names.map! do |name|
   index += 1
   score = 0
   name.each_byte {|b| score += b - 64 }
   score * index
end
puts names.reduce {|sum, x| sum += x}
