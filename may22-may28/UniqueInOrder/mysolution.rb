def unique_in_order(iterable)
  unique_array = []
  if iterable.class == String
    iterable_array = iterable.split('')
    iterable_array.each do |unit|
      if unique_array[-1] != unit
        unique_array << unit
      end
    end
  elsif iterable.class == Array
    iterable.each do |unit|
      if unique_array[-1] != unit
        unique_array << unit
      end
    end
  end
  unique_array
end
