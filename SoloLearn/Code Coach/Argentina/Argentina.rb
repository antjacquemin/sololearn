pesos = get.chomp.to_i
dollars = get.chomp.to_i * 50
if pesos < dollars
    puts "Pesos"
else
    puts "Dollars"
end