#! /usr/bin/ruby
# Find the largest prime factor of 600851475143 
# Test with 13195 should give 5, 7, 13, 29

def find_factors(targets)
   puts "Finding factors for #{targets.join(",")}"
   targets.each do |target|
      (2..target).each do |x|
         if x == target 
            puts "prime => #{target}"
         else
            if (target % x) == 0
               find_factors [target / x, x]
               break
            end
         end
      end   
   end
end

find_factors [600851475143]
