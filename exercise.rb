class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  #this seemed nicer than splitting it and iterating over each word.
  def self.marklar(str)
    long_words = str.gsub(/\w{5,}/) { |m| m[0] == m[0].upcase ? 'Marklar' : 'marklar' }
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib = [0, 1]
    while fib.length < nth
      fib << fib[-2] + fib[-1]
    end
    fib.keep_if { |n| n % 2 == 0 }
    fib.inject(:+)
  end

end
