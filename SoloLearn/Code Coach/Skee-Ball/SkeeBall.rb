score = gets.chomp.to_i
tickets =  score / 12
cost = gets.chomp.to_i
if tickets < cost
    puts "Try again"
else
    puts "Buy it!")
end