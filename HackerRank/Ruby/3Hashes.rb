# 1 Initialization
empty_hash = Hash.new 
default_hash = Hash.new(1)
hackerrank = {"simmy" => 100, "vivmbbs" => 200}

# 2 Each
def iter_hash(hash)
    hash.each do |key, val|
        puts key
        puts val
    end
end

# 3 Addiditon, Deletion, Selection
hackerrank[543121] = 100
hackerrank.keep_if { |key, val| key.is_a? Integer }
hackerrank.delete_if { |key, val| key % 2 == 0 }