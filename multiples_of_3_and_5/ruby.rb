def multiples
  (0...1000).select{|n| n % 5 == 0 || n % 3 == 0}.reduce(:+)
end