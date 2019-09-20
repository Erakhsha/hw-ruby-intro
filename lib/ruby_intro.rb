# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    # YOUR CODE HERE
    sum = 0
    arr.inject(0){|sum,x| sum+x}
end

def max_2_sum arr
    # YOUR CODE HERE
	max_1=0
	max_2=0
	arr.each do |element|
		if max_1 == 0
			max_1=element

		elsif max_2 == 0
			max_2=element

		elsif element>max_1
			max_1=element

		elsif element>max_2
   			max_2=element
		end
    end

    max_1+max_2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
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
