# 1 Introduction
def prime? a
    return (a == 1 || a == 0) ? false : (2..Integer.sqrt(a)).none? {|div| a % div == 0}    
end

# 2 Arguments
def take(list, index=1)
    return list.drop(index)
end

# 3 Variable arguments
def full_name(firstname, *middlenames, lastname)
    return "#{middlenames.reduce(firstname){|x,y| "#{x} #{y}"}} #{lastname}" 
    #return middlenames.unshift(firstname).push(lastname).join(" ")
end

# 4 Keyword arguments
def convert_temp(temperature, input_scale:, output_scale: "Celsius")
    input = input_scale.downcase
    output  = output_scale.downcase
    temperatures = ["celsius", "fahrenheit", "kelvin"]
    if temperatures.include?(input) && temperatures.include?(output)
        if input == output
            return temperature
        else
            case input
            when "kelvin"
                return output_scale == "celsius" ? temperature - 273.15 : 9.0 / 5 * temperature - 491.67
            when "celsius"
                return output_scale == "kelvin" ? temperature + 273.15 : 9.0 / 5 * temperature + 32
            when "fahrenheit"
                return output_scale == "kelvin" ? 5.0 / 9 * (temperature - 32) + 273.15 : 5.0 / 9 * (temperature - 32)
            end
        end
    end
end

# 5 Blocks
def factorial
    yield
end

n = gets.to_i
factorial do 
    puts (1..n).reduce(:*)
end

# 6 Procs
def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = proc { |x| x**2 }
proc_sum_array     = proc { |arr| arr.reduce(:+) }
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)

# 7 Lambdas
# Write a lambda which takes an integer and square it
square      = -> (a) { a**2 }

# Write a lambda which takes an integer and increment it by 1
plus_one    = -> (a) { a+1 } 

# Write a lambda which takes an integer and multiply it by 2
into_2      = -> (a) { a*2 } 

# Write a lambda which takes two integers and adds them
adder       = -> (a, b) { a+b } 

# Write a lambda which takes a hash and returns an array of hash values
values_only = -> (hash) { hash.values } 


input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e

# 8 Closures
def block_message_printer
    message = "Welcome to Block Message Printer"
    if block_given?
        yield
    end
  puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }

def proc_message_printer(my_proc)
    message = "Welcome to Proc Message Printer"
    my_proc.call              #Call my_proc
    puts "But in this function/method message is :: #{message}"
end


my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)
    
    
def lambda_message_printer(my_lambda)
    message = "Welcome to Lambda Message Printer"
    my_lambda.call              #Call my_lambda
    puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)    

# 9 Partial applications
combination = -> (n) do
    -> (k) do
        (k+1..n).inject(:*) / (1..n-k).inject(:*)
    end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)

# 10 Currying
power_function = -> (x, z) {
    (x) ** z
}

base = gets.to_i
raise_to_power = power_function.curry.(base)

power = gets.to_i
puts raise_to_power.(power)

# 11 Lazy evaluation
print (2..).lazy.select { |a| a.to_s.reverse.to_i == a && (2..Integer.sqrt(a)).none? { |div| a % div == 0} }.first(gets.to_i)