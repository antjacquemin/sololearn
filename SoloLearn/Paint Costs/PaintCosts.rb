colors = gets.chomp_to_f
total = 40 + 5 * colors
tax = total / 10
puts (total + tax).ceil