#! /usr/bin/ruby
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
#

require 'date'

sunday = Date::civil_to_jd(1900, 1, 1) - 1

count = 0
(1901..2000).each do |y|
   (1..12).each do |m|
      count += 1 if (Date::civil_to_jd(y, m, 1) - sunday) % 7 == 0
   end
end
puts count

