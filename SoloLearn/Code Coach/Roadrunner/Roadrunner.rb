distance = gets.chomp.to_i
runnerSpeed = gets.chomp.to_i
coyoteSpeed = gets.chomp.to_i
runnerTime = distance / runnerSpeed
coyoteTime = (distance + 50) / coyoteSpeed
if runnerTime < coyoteTime
    puts "Meep Meep"
else
    puts "Yum"
end