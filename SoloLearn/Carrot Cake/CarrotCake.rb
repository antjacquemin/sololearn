carrots = gets.chomp.to_i
boxes = gets.chomp.to_i
remainder = carrots % boxes
missing = 7 - remainder
if missing <= 0
    puts "Cake Time"
else
    puts "I need to buy %d more" % [missing]
end