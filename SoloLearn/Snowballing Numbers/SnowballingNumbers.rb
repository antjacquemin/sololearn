def snowball(n)
    total = 0
    for a in 1..n
        val = gets.chomp.to_i
        if val <= total
            return "false"
        end
        total += val
    end
    return "true"
end

n = gets.chomp.to_i
puts snowball(n)