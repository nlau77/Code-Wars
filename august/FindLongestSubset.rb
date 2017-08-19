# Instructions
Find the largest length of consecutive increase numbers within an array

# Example
length_of_list([0, 3, 2, 9, 5, 1, 8, 10]) -> [1, 8, 10] -> 3

# Solutions

def length_of_lis(nums)
    if nums.length == 0
        return 0
    else
        subsequences = []
        while nums.length > 0
            sub_seq = []
            nums.each_with_index do |number, index|
                if index == 0
                    sub_seq << number
                else
                    if number > sub_seq[-1]
                        sub_seq << number
                    else
                      break
                    end
                end
            end
            subsequences << sub_seq.length
            nums.shift
        end
        subsequences.max
    end
end
