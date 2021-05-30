orders = gets.chomp.split()
total = 0.0
for order in orders
    case order
    when "Nachos", "Pizza"
        total += 6.0
    when "Cheeseburger"
        total += 10.0
    when "Water"
        total += 4.0
    else
        total += 5.0
    end
end
tax = total * 7 /100
puts total + tax