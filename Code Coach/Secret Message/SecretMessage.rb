phrase = gets.downcase
phrase.each_char { |c|
    if c!= " "
        print ('a'.ord + 'z'.ord - c.ord).chr
    else
        print c
    end
}