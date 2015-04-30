puts "What's your name?"
name = gets.chomp


while name.downcase != "jacob"
	puts "hi, #{name}. and you are?"
	name = gets.chomp

end
puts "Okay, I think that's everyone"