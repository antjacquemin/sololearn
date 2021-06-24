prices = gets.chomp.split(",").map { |string| string.to_f }
total = 0.0
for price in prices
    total += price
    if price < 20
        total += 0.07 * price
    end
end
puts total.round(2)