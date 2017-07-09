# Instructions
# square every digit of a number

# Example
# 9119 --> 811181
# should start with an integer input and end with an integet input

def square_digits num
  num.to_s.chars #turn the number into a string and split up each digit
     .map{|x| x.to_i ** 2} # square each digit
     .join('') #recombine the digits into one string
     .to_i  #change the string back into an integer
end
