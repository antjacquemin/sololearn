prices = gets.chomp.split.map { |string| string.to_f }
maxUSD = prices.max * 1.1
if maxUSD > 20
    puts "Back to the store"
else
    puts "On to the terminal"
end