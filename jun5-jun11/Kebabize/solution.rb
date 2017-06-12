# my solution

def kebabize(str)
  #remove all numbers from the string
str.gsub!(/[0-9]/,"")
# str.gsub(/[A-Z]/,"-")  should be able to use regex here...look into it

# replace all captial letters with "-"  ie A --> -a
new_string_with_dash = ""
str.downcase.chars.each_with_index do |letter, index|
    if letter == str[index]
      new_string_with_dash +=letter
    else
      new_string_with_dash += "-#{letter}"
    end
  end

# remove the the "-" from the beginning of the string if the first letter was capitalized
  if new_string_with_dash[0] == "-"
    new_string_with_dash = new_string_with_dash[1..-1]
  end

  new_string_with_dash
end


# gsub needed to replace captical letters
new_str.gsub(/[A-Z]/) { |c| "-" + c.downcase }
