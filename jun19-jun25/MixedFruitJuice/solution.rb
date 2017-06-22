def mix_fruit(arr)
  regular_fruits = ["banana", "orange", "apple", "lemon", "grapes"]
  special_fruits = ["avocado", "strawberry", "mango"]

#   total up the value of each fruit
  value = 0
  arr.each do |fruit|
    fruit = fruit.downcase
    if regular_fruits.include?(fruit)
      value += 5.0
    elsif special_fruits.include?(fruit)
      value += 7.0
    else
      value += 9.0
    end
  end
#   get the average
  average = (value / arr.size).round
end
