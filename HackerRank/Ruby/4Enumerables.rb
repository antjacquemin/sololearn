# 1 Introduction
def iterate_colors(colors)
    colors.to_a
end

# 2 Each with index
def skip_animals(animals, skip)
    result = []
    animals.drop(skip).each_with_index do |item, index|
        result << "#{index + skip}:#{item}"
    end
    return result
    #return animals.map.with_index { |item, index| "#{index}:#{item}" }.drop(skip)
end

# 3 Collect
def rot13(secret_messages)
    return secret_messages.map { |string| 
        string.chars.map {|c| 
            c.match(/^[[:alpha:]]$/) ? ('a'.ord + (c.ord - 'a'.ord + 13) % 26).chr : c 
        }.join
    }
end

# 4 Reduce
def sum_terms(n)
    (1..n).reduce(0) { |total, value| total + value**2 + 1 }
end

# 5 Any, all , none and find
def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    hash.any? { |key, value| key.is_a?(Integer) }
end

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    hash.all? { |key, value| value.is_a?(Integer) && value < 10 }
end

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    hash.none? { |key, value| value.nil? }
end

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    hash.find { |key, value| key.is_a?(Integer) && value.is_a?(Integer) && value < 20 || key.is_a?(String) && value.is_a?(String) && value.start_with?("a") }
end

# 6 Group by
def group_by_marks(marks, pass_marks)
    marks.group_by { |name, score| score > pass_marks ? "Passed" : "Failed" }    
end
