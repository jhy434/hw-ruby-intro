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
	max = 0
	max2 = 0
	i = 0
	loop do
		if i == arr.length
			break
		end
		if arr[i] > max
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
	end
	return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

arr = [1, 3, 5, 7 ,8 ,9]
sum(arr)

