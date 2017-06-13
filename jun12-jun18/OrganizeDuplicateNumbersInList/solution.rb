# my solution
def group(arr)

grouped_array = []
  arr.uniq.each do |number|
    push_array= []
    arr.count(number).times do
      push_array << number
    end
    grouped_array << push_array
  end

  grouped_array
end

# others solutions

def group(arr)
  arr.group_by(&:itself).values
end

def group(arr)
  arr.group_by { |i| i }.values
end
