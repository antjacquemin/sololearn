password = gets.chomp
numbers = password.count("0123456789")
symbols = password.count("!@#$%&*")
if password.size > 6 and numbers > 1 and symbols > 1
    puts "Strong"
else
    puts "Weak"
end