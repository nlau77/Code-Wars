# my solution
def find_it(seq)
  unique_numbers = seq.uniq
  unique_numbers.each do |number|
    if seq.count(number) % 2 == 1
     return number
    end
  end
end


# other interesting solutions
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end


def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end
