# 1 Each
def scoring(array)
    # iterate through each of the element in array using *each* and call update_score on it
    array.each do |user|
        user.update_score
    end
end

# 2 Unless
def scoring(array)
# update_score of every user in the array unless the user is admin
    array.each do |user|
        unless user.is_admin?
            user.update_score
        end
        #user.update_score unless user.is_admin? 
    end
end

# 3 Infinite Loop
loop do
    coder.practice
    if coder.oh_one?
        break
    end
end

# 4 Until
coder.practice until coder.oh_one?

# 5 Case
def identify_class(obj)
    # write your case control structure here
    case obj
    when Hacker
        puts "It's a Hacker!"
    when Submission
        puts "It's a Submission!"
    when TestCase
        puts "It's a TestCase!"
    when Contest
        puts "It's a Contest!"
    else
        puts "It's an unknown model"
    end 
end