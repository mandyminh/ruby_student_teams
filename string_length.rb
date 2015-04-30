puts "Give me a word or phrase:"

input=gets.chomp


def how_long(str)

	if str.include? (" ")
		str = str.delete (" ")
	end
	length = str.length









	end

	def reverse_it(str)
		reverse =str.reverse
	end


	puts "That's #{how_long(input)} letters long."
	puts "In reverse that's #{reverse_it}"