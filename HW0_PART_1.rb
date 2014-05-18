=begin
Define a method sum which takes an array of integers as an argument and
returns the sum of its elements. For an empty array it should return zero.
=end
def sum(numbers)
	numbers = [0] if (numbers.nil? || numbers.empty?)
	numbers.reduce(:+)
end

=begin
Define a method max_2_sum which takes an array of integers as an argument and
returns the sum of its two largest elements. For an empty array it should
return zero. For an array with just one element, it should return that
element.
=end 
def max_2_sum(numbers)
	numbers = [0] if (numbers.nil? || numbers.empty?)
	numbers.sort! { |a,b| b <=> a }
	numbers[0,2].reduce(:+)
end

=begin
Define a method sum_to_n? which takes an array of integers and an
additional integer, n, as arguments and returns true if any two distinct
elements in the array of integers sum to n. An empty array or single element
array should both return false.
=end
def sum_to_n?(numbers, n)
   
   is_sum_to_n = if !numbers.nil? && ( numbers.size > 1 ) 
    numbers.combination(2).any? { |a,b| (a+b)==n } 
   end
   
   is_sum_to_n
end