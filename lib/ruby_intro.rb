# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  #Retrive Array length
  arr_len = arr.length()
  
  #Check if array is empty
  if(arr_len == 0)
      return 0
  end
  
  #Loop through the array to find the sum of elements
  iter = 0
  arr_sum = 0
  loop do
      if(iter == arr_len)
          break
      end
      arr_sum += arr[iter]
      iter += 1
  end
  
  #Return the Result
  return arr_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  #Retrive Array length
  arr_len = arr.length()
  
  #Check if array is empty
  if(arr_len == 0)
    return 0
  elsif(arr_len == 1)
    return arr[0]
  end
  
  max_1 = arr[0]
  max_2 = arr[1]
  if(max_1 >= max_2)
    temp = max_1
    max_1 = max_2
    max_2 = temp
  end
  
  #Loop through the array to find the two maximum elements
  iter = 2
  loop do
      if(iter == arr_len)
          break
      end
      if(arr[iter] >= max_1)
        if(arr[iter] >= max_2)
          max_1 = max_2
          max_2 = arr[iter]
        else
          max_1 = arr[iter]
        end
      end
      
      iter += 1
  end
  return (max_1+max_2)
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #Retrive Array length
  arr_len = arr.length()
  
  #Check if array is empty
  if(arr_len == 0)
      return false
  end
  
  iter = 0
  hm = Hash.new()
  loop do
    if(iter == arr_len)
        break
    end
    num = arr[iter]
    if(hm.has_key?(n - num))
      return true
    end
    hm[num] = 1
    iter += 1
  end
  
  return false
  
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s =~ /^[bcdfghjklmnpqrstvwxyz]/i)
    return true
  else
    return false
  end
    
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s == '0')
    return true
  end
  if(s =~ /^[01]*00\z/)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError.new(
      "ISBN is Empty")if isbn.length == 0
    raise ArgumentError.new(
      "Price should be greater than zero")if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    price_string = '$' + '%0.2f'
    return price_string % [price]
  end
  
end
