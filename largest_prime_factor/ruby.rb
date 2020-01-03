require 'prime'

def lpf1(num)
  # without using #prime_division
  i = 2
	largest = 0

  while 2 < num

  	if num % i == 0
  		factor = num / i

  		if Prime.prime?(factor)
  			largest = factor
  			break
  		end
  	end

  	i += 1
  end

  largest
end

def lpf2(num)
  # really fast
  Prime.prime_division(num).last[0]
end