def luhn(cardnumber)
    array = cardnumber.reverse.split("")
    array = array.map { |c| Integer(c) }
    array = array.each_with_index.map { |n, i| if i % 2 == 1 then 2 * n else n end }
    array = array.map { |n| if n > 9 then n - 9 else n end }
    return array.sum % 10 == 0
end

cardnumber = gets.chomp
if cardnumber.length == 16 and luhn(cardnumber)
    puts "valid"
else
    puts "not valid"
end