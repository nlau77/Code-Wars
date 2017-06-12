def password_gen
# set up the characters allowed for a password
lower_case_letters = ('a'..'z').to_a
upper_case_letters = ('A'..'Z').to_a
numbers =("0".."9").to_a

random_character = [lower_case_letters.sample,
                    upper_case_letters.sample,
                    numbers.sample]

# generate random string for password
password = ""
rand(6...17).times do
  password += random_character.sample
end

# ensure that it passes all the criteria
password += lower_case_letters.sample
password += upper_case_letters.sample
password += numbers.sample

password

end

# others solution 
UPPER = ('A'..'Z').to_a
LOWER = UPPER.map &:downcase
NUMBER = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
CHARS = UPPER + LOWER + NUMBER
def password_gen
  (1..rand((6..20))).map{CHARS.sample}.join
end


ALPHA_NUM = [*('a'..'z'), *('A'..'Z'), *('0'..'9')]
def password_gen
  Array.new(20) { ALPHA_NUM.sample }.take(rand(6..20)).join
end
# take away - combine all the Chars into one array then take random characters
