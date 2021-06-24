eggs = gets.chomp.to_i
eggsBasket = gets.chomp.to_i
eggsFriend = gets.chomp.to_i
if eggs == eggsBasket + eggsFriend
    puts "Candy Time"
else
    puts "Keep Hunting"
end