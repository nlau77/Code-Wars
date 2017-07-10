#Instructions
#manipulate a string to return the following results

#examples
# accum("abcd")  -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt")  -> "C-Ww-Aaa-Tttt"


# solution
def accum(s)
  results = ""
  s.chars.each_with_index do |x, index|
    results += x.upcase

    index.times do
      results += x.downcase
    end

    if index != s.length-1
      results += "-"
    end
  end
  results
end


#interesting solution from others
def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end
