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
	require 'set'
	seen=Set[]
	arr.each do |element|
		compliment=n-element
		if seen.include? compliment
			return true
		end
		seen.add(element)
	end
	return false
end

# Part 2

def hello(name)
    # YOUR CODE HERE
    return 'Hello, '+name
end

def starts_with_consonant? s
    # YOUR CODE HERE
    if s.to_s.strip.empty?
        return false
 
    elsif /^[a|e|i|o|u]/.match?(s.downcase)
        return false
    
    elsif /[^a-zA-Z\d\s:]/.match?(s)
        return false
    end

    return true
end

def binary_multiple_of_4? s
    # YOUR CODE HERE
    if not /^[(0|1)]+$/.match(s)
        return false

    elsif /^0$/.match(s) || /00$/.match(s)
        return true
    end

    return false
end

# Part 3

class BookInStock
    # YOUR CODE HERE
    @isbn  = 0
	@price = 0.0


	def initialize(isbn, price)
		_verify_isbn(isbn)
		_verify_price(price)

		@isbn=isbn
		@price=price.to_f
    end

	def _verify_isbn(isbn)
        if isbn.to_s.strip.empty?
		    raise ArgumentError, 'ISBN is empty!'
        end
	end	

	def _verify_price(price)
        if price.to_f <= 0
		    raise ArgumentError, 'Price should be more than zero!'
	    end
    end

	def isbn=(isbn)
		_verify_isbn(isbn)
		@isbn=isbn
	end

	def isbn()
		return @isbn
	end

	def price=(price)
		_verify_price(price)
		@price=price.to_f
	end

	def price()
		return @price
	end

	def price_as_string()
		return '$%.2f' % @price
	end

end
