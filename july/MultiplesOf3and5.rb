# Instructions

# with a given number find all numbers below that number
# that are a multiple of 3 or 5 and find the sum of all the numbers

# solution 1, longer way
def solution(number)
 sum = 0
 Array(1..number-1).each do |i|
   if i % 3 == 0 || i % 5 == 0
     sum += i
   end
 end
 sum
end

# solution 2, shorter
def solution(number)
  Array(1..number-1).select {|x| x % 3 == 0 || x % 5 == 0}.reduce(:+)
end
