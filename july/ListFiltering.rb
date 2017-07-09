# Instructions
# given a list, find all non-negative intergers

# example
filter_list([1,2,'a','b']) == [1,2]
filter_list([1,'a','b',0,15]) == [1,0,15]
filter_list([1,2,'aasf','1','123',123]) == [1,2,123]


# solution
def filter_list(l)
  l.select{|input| input.is_a? Integer}
   .select{|input| input >= 0 }
end
