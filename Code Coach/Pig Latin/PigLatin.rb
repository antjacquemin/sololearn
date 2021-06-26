words = gets.chomp.split
wordsPL = Array.new
words.each { |word| wordsPL << word[1..word.length - 1] + word[0] + "ay" }
puts wordsPL.join(" ")