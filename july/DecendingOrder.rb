# Instructions
## Make a funtion that takes an non-negative number as an argument
## and return its digits in decending order

# Example
##Input: 21445 Output: 54421
##Input: 145263 Output: 654321

# solution 1
def descending_order(n)

  split_digits = n.to_s.split('')
  sorted_digits = split_digits.sort

  # reverse the order
  reverse = ""
  sorted_digits.each do |x|
      reverse = x + reverse
    end
    reverse.to_i #change answer back into integer
end

# solution 2, condensed
def descending_order2(n)
  n.to_s.chars.sort.join.reverse.to_i
end
