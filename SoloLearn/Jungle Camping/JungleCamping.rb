sounds = gets.chomp.split
animals = ""
for sound in sounds
    case sound
    when "Grr"
        animals += "Lion "
    case "Rawr"
        animals += "Tiger "
    case "Ssss"
        animals += "Snake "
    case "Chirp"
        animals += "Bird "
    end
end
puts animals[0..-2]