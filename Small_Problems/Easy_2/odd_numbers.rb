=begin
------------------------------------------------------------------------------------------
- Print all odd numbers from 1-99, each on a seperate line
------------------------------------------------------------------------------------------
=end

#OPTION 1
nums = (1..99)
nums.each {|n| n.odd? ? puts(n) : next }

#OPTION 2
nums = (1..99)
nums_odd = nums.select {|n| n.odd? }          #ALT: #filter (alias for #select)       #ALT2: nums.select! (destructive method)
puts nums_odd                                                                         #ALT2: puts nums (call original array)

#OPTION 3
nums = (1..99)
nums_odd = nums.map {|n| n.odd? ? n : next }  #ALT: nums.map! (destructive method)
nums_odd.filter! {|n| n.nil? ? next : n }
puts nums_odd

#OPTION 4
1.upto(99) {|n| n.odd? ? puts(n) : next }

#OPTION 5 
value = 1
while value <= 99
  puts value
  value += 2
end
