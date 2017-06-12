# my solution
def duplicate_encode(word)
  coverted = ""
  word.downcase.chars.each do |character|
    if word.downcase.count(character) > 1
      coverted += ")"
    else
      coverted += "("
    end
  end
  coverted
end

# things to not, was trying to do word.count instead of word.downcase.count
# just be carful of making sure everything is downcased when needed if case is not important
# should have just started with word.downcase!


# others' interesting solution
