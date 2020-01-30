# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	# YOUR CODE HERE
	i = 0
	s = 0
	loop do
		if i == arr.length
			break
		end
		s += arr[i]
		i += 1
	end
	sum = s
end

def max_2_sum arr
  # YOUR CODE HERE
	max = -999
	max2 = -999
	i = 0
	if arr.length == 0
	   return 0 
	end
	if arr.length == 1
	   return arr[0] 
	end
	loop do
		if i == arr.length
			break
		end
		if (arr[i] >= max2)
			max2 = max
			max = arr[i]
		end
		i += 1
	end
	sum = max2 + max
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	nlist = {}
	i = 0
	loop do
		if i == arr.length
			break
		end
		diff = n - arr[i]
		if nlist.has_key?(diff)
			return true
		end
		nlist[arr[i]] = 1
		i += 1
	end
	return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  a = ""
  a = "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
    if ((s[0] =~/[a-zA-Z]/) == nil)
       return false 
    end
    if(s[0] == 'A' || s[0] == 'E' || s[0] == 'I' || s[0] == 'O' || s[0] == 'U' || s[0] == 'a' || s[0] == 'e' || s[0] == 'i' || s[0] == 'o' || s[0] == 'u' || s.length == 0)
        return false
    end
    return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
     return false 
  end
  if ((s =~/[2-9a-zA-Z]/) != nil)
  		return false
  end
  sum = 0
  i = 0
  loop do
  		if i == s.length
  			break
  		end
  		if((s[i].ord - 48) == 1)
  			sum += 2 ** (s.length - i - 1)
  		end
  		i += 1
  end
  puts sum
  if sum % 4 == 0
  	return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
@isbn = ""
@price = 0.0
def initialize(is,pr)
	@isbn = is
	@price = pr
	if((@isbn.length == 0) || (@price <= 0.0))
		puts "Arg"
		raise ArgumentError.new("ERROR")
	end
end

def price_as_string
	@price = @price.round(2)
	p = @price.to_s
	p = "$" + p
	if(p.index('.') == nil)
		p = p + ".00"
	elsif(p.index('.') == p.length - 2)
		p = p + "0"
	else
		return p
	end
end

attr_accessor :price 
attr_accessor :isbn 

end
