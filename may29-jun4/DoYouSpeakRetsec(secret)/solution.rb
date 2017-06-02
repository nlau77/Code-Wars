# my solution
def reverse_by_center(s)
  string_size = s.size
  if string_size.even?
    private_message = s[string_size/2..-1] + s[0..string_size/2-1]
  else
    private_message = s[string_size/2+1..-1] + s[string_size/2] + s[0..string_size/2-1]
  end
end

# other interesting solutions
def reverse_by_center(s)
  i = s.length / 2
  s[-i..-1] + s[i, s.length % 2] + s[0, i]
end

def reverse_by_center(s)
  s_arr = s.chars
  half_size = s.size / 2
  middle = s_arr.delete_at(half_size) if s.size.odd?
  s_arr.rotate(half_size).insert(half_size, middle).join
end
