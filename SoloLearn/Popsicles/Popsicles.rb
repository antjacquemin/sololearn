siblings = gets.chomp.to_i
popsicles = gets.chomp.to_i
if popsicles % siblings == 0
    puts "give away"
else
    puts "eat them yourself"
end