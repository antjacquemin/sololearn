for i in 1..6
    number = gets.chomp.to_i
    if number % 3 == 0
        puts "Pop "
    elsif number % 2 == 0
        puts "Crackle "
    else 
        puts "Snap "
    end
end