# Instructions
## find the middle chracters of a string
## if the string is odd find the middle letter
## if the string is even find the middl two charcters

# example
## getMiddle("middle") --> "dd"
## getMiddle("cat") --> "a"

# solution
def get_middle(s)
  if s.length % 2 == 0
    s[s.length/2-1] + s[s.length/2]
  else
    s[s.length/2]
  end
end


# interesting solution from others
def get_middle(s)
  mid = (s.length - 1) / 2
  s.length.odd? ? s[mid] : s[mid..mid+1]
end
