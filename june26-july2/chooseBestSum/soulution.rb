def choose_best_sum(t, k, ls)
# t = total traveling distance for all cities traveled too
# k = number of cities to travel too
# ls = array of the distane to each city

# find all combinations of distances given k
travel_combinations = ls.combination(k)

# find the distance total of each combination
# select distances that are less than or equal to the accepted max (t)
travel_distances = travel_combinations.map do |set|
    total_distance = set.reduce(:+)
  end

# select distances that are less than or equal to the accepted max (t)
viable_distances = travel_distances.select{|distance| distance <= t }

# find the max of t
# method one => t.sort[-1]
# method two using max method
viable_distances.max

end

# what I learn from this problem
# method .combination(n)  --finds all combinations of numbers
# .max -- can an alternative to .sort[-1]
# .select -- a way to weave out unwanted results without having to create a new array
