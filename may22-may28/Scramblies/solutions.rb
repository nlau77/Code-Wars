#  my solutions

def scramble(s1,s2)

  fail = 0
  s2.split('').each do |letter|
    if !s1.include?(letter)
     fail += 1
    else
     s1.sub!(letter, '')
    end
  end
  fail < 1
end

# learned that there is a method called sub which only repalces one letter instead
# of gsub which will replace all letters


# interesting solutions from others  
def scramble(s1,s2)
  s2.chars.all? { |c| s1.sub!(c, '') }
end
