def my_uniq(arr)
  raise "Argument is not an array" unless arr.is_a?(Array)

  result = []

  arr.each { |el| result << el unless result.include?(el) }

  result
end

class Array
  def two_sum
    
  end
end
