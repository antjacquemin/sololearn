# 1 Hello HackerRank!
print "Hello HackerRank!!"

# 2 Everything is an object
print self 

# 3 Object Methods
def odd_or_even(number)
    # add your code here
    return number.even?
end

(0...gets.to_i).each do |i|
    puts odd_or_even(gets.to_i)
end

# 4 Object Method Parameters
return a.range? b, c