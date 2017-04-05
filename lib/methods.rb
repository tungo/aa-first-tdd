def my_uniq(arr)
  raise "Argument is not an array" unless arr.is_a?(Array)

  result = []

  arr.each { |el| result << el unless result.include?(el) }

  result
end

class Array
  def two_sum
    result = []

    (size - 1).times do |idx1|
      (idx1 + 1...size).each do |idx2|
        a, b = self[idx1], self[idx2]
        result << [idx1, idx2] if a + b == 0
      end
    end

    result
  end
end

def my_transpose(arr)
  
end
