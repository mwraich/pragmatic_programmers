def fib_up_to(max)
  i1, i2 = 1, 2
  while i1 < max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_up_to(50) { |f| print f, ' '}
puts

class Array
  def find
    each do |value|
      return value if yield(value)
    end
    nil
  end
end

# [1, 3, 5, 7, 9].find {|v| v*v > 30}
