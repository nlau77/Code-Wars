# Question
  # Create an array thats have n elements of value V
  # raise an error if n is not a valid integer

# sample
prefill(2, "pie") -> ["pie", "pie"]
prefill(2,prefill(3, "cake")) -> [["cake","cake","cake"],["cake","cake","cake"]]
# my solution
def prefill(n,v)
  prefill_array = []
  Integer(n).times do
    prefill_array << v
  end
  prefill_array
  rescue
    raise TypeError, "#{n} is invalid"
end

# interesting solution from others
def prefill(n, v = nil)
  Array.new(Integer(n)) { v }
rescue
  raise TypeError.new "#{n} is invalid"
end


def prefill(n = 0,v = nil)
  if (n.is_a?(String) && n == n.to_i.to_s) || (n.is_a?(Integer) && n >= 0)
    return Array.new(n.to_i, v)
  end
  raise TypeError, "#{n} is invalid"
end
