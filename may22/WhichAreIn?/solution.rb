def in_array(array1, array2)
  r = []
 array1.each do |string|
   if array2.any? {|word| word.include?(string) }
     r << string
   end
 end
 r.uniq.sort
end
