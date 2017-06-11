# my solution
def array_diff(a, b)
  not_in_b = []
  a.each do |number|
   if !b.include?(number)
     not_in_b << number
    end
  end
  not_in_b
end

# other interesting solutions
def array_diff(a, b)#21
  a-b
end

def array_diff(a, b)
  a.reject {|e| b.include? e}
end

def array_diff(a, b)
  b.each {|b_item| a.delete(b_item)}
  a
end
