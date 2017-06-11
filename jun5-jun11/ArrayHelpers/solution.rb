class Array
  def square
   self.map{ |number| number * number }
  end

  def cube
    self.map{ |number| number ** 3 }
  end

  def sum
#   look at this into more detail
    x = 0
    self.map { |number| x += number }
    x
  end

  def average
    if self.size == 0
      return "NaN"
    else
      self.sum / self.size
    end
  end

  def even
    self.reject { |number| !number.even? }
  end

  def odd
    self.reject { |number| !number.odd? }
  end
end
