# puts "Give me a dog or a cat:"
# animal = gets.chomp

# if animal =="dog"
# 	puts "Woof"

# else 
# 	puts "Meow"

# end




# puts "Give me an animal:"
# animal = gets.chomp.downcase

# if animal =="dog"
# 	puts "Woof"

# elsif animal =="cat"
# 		puts "Meow"

# 	elsif animal =="cow"
# 			puts "Moo"

# 		elsif animal =="pig"
# 			puts "Oink"
# 	end				


case animal
	when "dog"
		puts "Woof"

	when "cat"
		puts "Meow"

	when "sheep" || "pig"
		puts "oink"
	else
		puts "Um...ROAR"

	end
	