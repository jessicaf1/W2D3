
def my_uniq(arr)
  new_arr = arr.uniq
end

class Array

  def two_sum
  arr = []
    self.each_with_index do |ele, i|
      self.each_with_index do |ele2, i2|
        arr << [i, i2] if (ele + ele2 == 0) && (i < i2)
      end
    end
  arr 
  end 

end 

def my_transpose(matrix)
  matrix.transpose
end



