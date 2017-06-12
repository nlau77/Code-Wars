# my solution
def dig_pow(n, p)
    sum_of_powers = 0
    n.to_s.chars.each do |number|
      sum_of_powers += number.to_i ** p
      p += 1
    end

    if sum_of_powers % n != 0
      -1
    else
      sum_of_powers / n
    end
end


# others interesting solution
def dig_pow(n, p)
    total = n.to_s.split('').map.with_index{|d, i| d.to_i ** (p+i)}.reduce(:+)
    total % n == 0 ? (total / n) : -1
end

# reduce to join the values from the map
#  ? == > true / false
