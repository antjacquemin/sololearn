snacks = gets.chomp.split
total = 0
for snack in snacks
    case snack
    when "Lettuce"
        total += 5
    when "Carrot"
        total += 4
    when "Mango"
        total += 9
    end
end
if total > 9
    puts "Come on Down!"
else
    puts "Time to wait"
end