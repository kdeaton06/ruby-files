def encrypt
	puts "Please enter the message to encrypt: "
	text = gets.chomp

	puts "Please enter how far you would like to shift each letter: "
	shift = gets.chomp.to_i

	chars = text.split("")

	encrypted = Array.new

	chars.each do |char|

		if char != " " 
			#gets ascii value and adds shift
			shiftChar = getShiftedChar(char, shift)

			encrypted.push(shiftChar)
		else
			encrypted.push(char)	
		end
	end
	puts "Encytped Message " + encrypted.join	
end



def getShiftedChar(char, shift)
	value = char.ord

	if (value + shift) >  90 && (value + shift) < 97
		value -= 26
		value += shift
	elsif (value + shift) >  122
		value -= 26
		value += shift
	elsif (value > 90 && value < 97) || value < 65  || value > 122 #special chars
		value
	else
		value += shift
	end

	shiftedChar = value.chr
end


encrypt