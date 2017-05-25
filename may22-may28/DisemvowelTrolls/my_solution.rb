# my solution
def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/,"")
end



# interesting solutions by others

def disemvowel(str)
  str.delete('aeiouAEIOU')
end
