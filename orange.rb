class Orange 

	def initialize 
		@height = 1
		@orangeCount = 0
		@age = 0
		@living = true
	end

	def height
		puts "The tree is #{@height} feet tall."
	end

	def countTheOranges
		if @age < 3
			puts "Your tree has #{@orangeCount} oranges."
		elsif @living
			@orangeCount = @age *3
			puts "Your tree has #{@orangeCount} oranges."
		else
			puts "It appears your Orange tree is dead and no longer produces fruit"
		end
	end

	def pickAnOrange 
		if @orangeCount >= 1
			@orangeCount -= 1
			puts "Here is your scrumptious Orange."
		else
			puts "Your tree does not have Oranges to pick."
		end
	end

	def oneYearPasses 
		@height += 4
		@orangeCount = 0
		@age += 1

		if @age <= 5
			puts "You're tree has grown another year. Congratulations!"
			puts "It is now #{@height} feet tall and #{@age} years old." + "\n\n"
		else
			@living = false
			puts "I'm sorry. You're Orange tree has died."
		end
	end

	def living?
		if @age <=	 5
			puts "You're tree is alive and well."
		else
			@living = false
			puts "I'm sorry. You're Orange tree has died."
		end
	end
end

tree = Orange.new

tree.height
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses

tree.oneYearPasses

tree.oneYearPasses

tree.pickAnOrange
tree.countTheOranges
tree.pickAnOrange
tree.height
tree.living?
tree.oneYearPasses

tree.living?
tree.oneYearPasses

tree.living?
tree.countTheOranges
tree.oneYearPasses
tree.living?