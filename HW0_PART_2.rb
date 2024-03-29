=begin Define a method hello(name) that takes a string representing a name and
returns the string "Hello, " concatenated with the name. 
=end 

def hello(name)
	"Hello, #{name}" 
end

=begin Define a method starts_with_consonant?(s) that takes a string and returns
true if it starts with a consonant and false otherwise. (For our purposes, a
consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for
both upper and lower case and for nonletters!
=end 
def starts_with_consonant?(s)
  
    vowels = %w(a e i o u)
    consonant =("a".."z").find_all { |letter| !vowels.include? letter}
    if s.is_a?(String) && !s.empty?
    return consonant.include? s[0].downcase

      else
        return false
      end
end


=begin Define a method binary_multiple_of_4?(s) that takes a string and returns
true if the string represents a binary number that is a multiple of 4. NOTE: be
sure it returns false if the string is not a valid binary number! 
=end 

def binary_multiple_of_4?(s)    
test = s.is_a?(String) && s.match(/^[0-1]+$/)!= nil && s.to_i(2) % 4 == 0
end
