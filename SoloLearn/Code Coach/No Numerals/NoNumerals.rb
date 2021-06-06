numbers = {
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten"
}
for word in gets.chomp.split
    if numbers.include? word
        print numbers[word]
    else
        print word
    end
    print " "
end