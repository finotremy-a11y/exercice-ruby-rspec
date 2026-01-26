def add(a, b)
  a+b
end

def subtract(a, b)
  a-b
end

def sum(array)
  if array.empty?
    (0)
  else 
    array.reduce(0) { |acc, n| acc + n }
  end
end

def multiply(a, b)
  a*b
end

def power(a, b)
  a**b
end

def factorial(n)
  if n==0
    1
  else
    (1..n).reduce(1) { |acc, x| acc * x }
  end
end