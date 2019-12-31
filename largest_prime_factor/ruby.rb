require 'prime'

def lpf(num)
  # 600851475143
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