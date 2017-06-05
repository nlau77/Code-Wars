# best solution from another user
def find_children(brigade)
  brigade.chars.sort_by{|letter| [letter.downcase, letter]}.join
end

# What I learned
# sort_by can take multiple parameters
# if the first parameter results in a tie, the second parameter will be used
# if that results in a tie, a third parameter will be used (if inputed)
