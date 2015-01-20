class Array

  def sum_of_numeric_elements
    select { |n| n.is_a? Numeric }.reduce(:+)
  end

  def product_of_numeric_elements
    select { |n| n.is_a? Numeric }.inject {|product, n| product * n }
  end

  def even_numeric_elements
    select { |n| n.is_a? Fixnum }.reject { |n| n.odd?}
  end

  def odd_numeric_elements
    select { |n| n.is_a? Fixnum }.reject { |n| n.even? }
  end

  def string_elements
    select { |element| element.is_a? String }
  end

  def lowercase_string_elements_as_uppercase
    select { |element| element.is_a? String }.select { |element| element == element.downcase }.map { |string| string.capitalize! }
  end

  def capitalized_elements
    select { |element| element.is_a? String }.reject { |string| string == string.downcase }
  end
end
