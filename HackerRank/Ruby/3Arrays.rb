# 1 Initialization
array = []
array_1 = [nil]
array_2 = [10, 10]

# 2 Index 1
def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    # arr.at(index) # or
    # arr[index]
    return arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    return arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
    return arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
    return arr[start_pos, length]
end

# 3 Index 2
def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    # Clue : arr[-index]
    return arr[-index]
end

def first_element(arr)
    # return the first element of the array
    # arr.first
    return arr.first
end

def last_element(arr)
    # return the last element of the array
    # arr.last
    return arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    return arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    return arr.drop(n)
end

# 4 Addition
def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    return arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    return arr.insert(0, element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    return arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    return arr.insert(index, 10, 7)
end

# 5 Deletion
def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    return arr.pop()
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    return arr.shift()
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    return arr.delete_at(index)
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
end

# 6 Selection
def select_arr(arr)
    # select and return all odd numbers from the Array variable `arr`
      return arr.select { |a| a % 2 == 1 }    
  end
  
  def reject_arr(arr)
    # reject all elements which are divisible by 3
      return arr.reject { |a| a % 3 == 0 }
  end
  
  def delete_arr(arr)
    # delete all negative elements
      arr.delete_if { |a| a < 0 }
  end
  
  def keep_arr(arr)
    # keep all non negative elements ( >= 0)
      arr.keep_if { |a| a >= 0 }
  end