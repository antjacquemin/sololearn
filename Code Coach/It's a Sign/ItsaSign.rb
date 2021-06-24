def saveSign()
    for i in 1..4 do
        label = gets.chomp
        if label == label.reverse
            return "Open"
        end
    end
    return "Trash"
end

puts saveSign()