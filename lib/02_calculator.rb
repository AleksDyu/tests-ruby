def add (a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(array)
  sum_array = 0
  array.each do |item|
    sum_array += item
  end
  return sum_array
end

def multiply(a, b)
  return a*b
end

def power(a,b)
  return a**b
end

def factorial(n)
  total = 1
  (1..n).each do |n|
    total *= n
  end
  total
end
