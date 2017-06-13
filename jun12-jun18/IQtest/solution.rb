def iq_test(numbers)
  evens = 0
  odds = 0
  number_array=numbers.split(" ")

#   total up odd and even numbers
  number_array.each do |number|
    if number.to_i % 2 == 1
       odds += 1
     else
       evens += 1
    end
  end

#   looking for an odd number
number_index = 0
  if odds < evens
    number_array.each_with_index do |number, index|
      if number.to_i % 2 == 1
        number_index = index + 1
#         break
      end
    end
  end

#   looking for an even number
  if odds > evens
     number_array.each_with_index do |number, index|
      if number.to_i % 2 == 0
        number_index = index + 1
#         break
      end
    end
  end

number_index
end

# things to note, dont forget to change numbers from string to fixnums
# before trying to conditionals with them
