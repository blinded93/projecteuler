def even_fib_less_than_4_mil
  array = [1, 2]

  while array[-1] + array[-2] < 4000000 do
    array.push(array[-1] + array[-2])
  end

  array.select{ |n| n % 2 == 0 }.reduce(:+)
end