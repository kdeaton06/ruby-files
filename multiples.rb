# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum firstNum, secondNum, endNum 
	total = 0
	
	for i in 1..endNum
		if i % firstNum == 0 || i % secondNum == 0
			total += i
		end
	end

	puts "Total: " + total.to_s
end

def promptUser
	puts "This program with take two numbers and determine the summation of all the multiples of them up the any third number"
	
	print "Please enter the first number "
	firstNum  = gets
	firstNum =	firstNum.chomp.to_i
	
	print "Please enter the second number "
	secondNum = gets
	secondNum = secondNum.chomp.to_i

	print "Please enter the number you want to stop counting at "
	endNum = gets
	endNum = endNum.chomp.to_i

	sum(firstNum, secondNum, endNum)
end

promptUser