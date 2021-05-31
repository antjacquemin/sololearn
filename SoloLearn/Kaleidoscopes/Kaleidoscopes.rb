kaleidoscopes = gets.chomp.to_i
cost = 5 * kaleidoscopes
if kaleidoscopes > 1
    cost *= 0.9
end
cost *= 1.07
puts cost.round(2)