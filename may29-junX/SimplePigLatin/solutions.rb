# my solution
def pig_it text
  altered_words = []
  text.split.each do |word|
    if word == "?" || word == "!" || word == "."
      altered_words << word
    else
      altered_words << word[1..-1] + word[0] + "ay"
    end
  end
altered_words.join(" ")
end

# interesting solutions by others

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

def pig_it text
  text.split.map{|word| word =~ /\w/ ? "#{word[1..-1]}#{word[0]}ay" : word}.join(" ")
end

def pig_it text
  text.split(" ").map{ |word|["?", "!", "."].include?(word) ? word : word[1..-1] + word[0] + "ay" }.join(" ")
end
