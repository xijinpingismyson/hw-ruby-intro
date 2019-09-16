# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sumarr = 0
  puts "Hello World!"
  arr.each do |item|
    sumarr=sumarr+item
    puts sumarr
  end
  return sumarr
end

def max_2_sum arr
  # YOUR CODE HERE
  max1 = -100
  max2 = -100
  arr.each do |item|
      if max1 < item
        max2 = max1
        max1 = item
      elsif max2 < item
        max2 = item
      end
  end
  max_sum_2 = max1 + max2
  if arr.empty?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  
  return max_sum_2
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    if n == 0
      return false
    end
  end
  if arr.combination(2).find {|x,y| x + y == n }
    return true
  end
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  puts s.slice(0)
  if s.slice(0) =~ /[A-Za-z]/
    puts "check symbol"
   
 
  if s.slice(0).casecmp('a') != 0 && s.slice(0).casecmp('e') != 0 && s.slice(0).casecmp('i') != 0&& s.slice(0).casecmp('o') != 0&& s.slice(0).casecmp('u') != 0
    puts "check letter"
    return true
  end
  return false
 end
  
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  chars = s.split('')
  puts chars.length
  puts chars[2]
  puts

  chars.each { |c|
    puts c
    if c!='0' && c!='1' && c!= ' '
      puts "not b string"
      return false
    end
  }
  integ = s.to_i(2)
  puts integ
  if integ % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE

 def initialize(isbn, price)
   if isbn.empty?
     raise ArgumentError
    end
    if price<=0
     raise ArgumentError
    end
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
    str = "$"
   str1 = "%.2f" % @price
   str.concat(str1)
  end

end
