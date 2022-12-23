=begin
------------------------------------------------------------------------------------
- Ask user for a (1) bill amount and (2) tip rate. 
- Compute the (3) tip amount and the (4) total amount
- Display both results
------------------------------------------------------------------------------------
=end

def prompt(message)
  puts "=> #{message}"
end

#SET bill_base
prompt("What is the bill?:")
bill_base = gets.chomp.to_f

#SET tip_rate & tip_multiplier
prompt("what is the tip percentage?:")
tip_rate = gets.chomp.to_f
tip_multiplier = tip_rate / 100

#CALCULATE results
tip_amount = bill_base * tip_multiplier
bill_total = bill_base + tip_amount

#FORMAT results (2 d.p.)
tip_amount = format("%.2f", tip_amount)
bill_total = format("%.2f", bill_total)

#DSIPLAY results
prompt("The tip is £#{tip_amount}")
prompt("The total is £#{bill_total}")
