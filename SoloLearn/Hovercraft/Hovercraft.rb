sales = gets.chomp.to_i
if sales == 7
    puts "Broke Even"
elsif sales < 7
    puts "Loss"
else
    puts "Profit"
end