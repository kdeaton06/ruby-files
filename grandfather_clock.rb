def time 
	hour = Time.now.hour

	if hour > 12 
		hour -= 12
	end
end

def chime sound
	hour = time()

	hour.times do
		sound.call
	end

	puts "\nIts #{hour} O'Clock"
end

dong = Proc.new do
	print 'dong '
end

cuckoo = Proc.new do
	print 'cuckoo '
end

chime dong
chime cuckoo