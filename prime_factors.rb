# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def factorsSum num
	factors = []
	primes = []
	total = 0

	#Finds all the factors of a given number
	for i in (num).downto(1)
		#Adds all the factors to an array
		if num % i == 0
			result = num / i
			factors.push(result)

			#Determines is the factor is a prime number and adds it to an array
			if prime?(result)
				primes.push(result)
				total += result
			end
		end
	end

	puts "Factors: #{factors}"
	puts "Prime Factoes #{primes}"
	puts "Total of all prime factors: #{total}"
end

def prime? num
	count = 0

	#Determines if a number is Prime
	for i in 2..num
		if num % i == 0
			count += 1
		end
	end

	if count > 1
		return false
	else
		return true
	end
end

def getsInput
	print "Please enter a number and I will return all the factors or that number. all the factors that are prime, and the sum of all the prime factors. "
	number = gets.chomp.to_i
	factors(number)
end

getsInput