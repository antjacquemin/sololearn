ha, la = gets.chomp.split(",").map(&:to_i)
hb, lb = gets.chomp.split(",").map(&:to_i)
if ha * la < hb * lb
    puts "Apartment B"
else
    puts "Apartment B"
end