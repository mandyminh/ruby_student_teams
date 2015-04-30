puts "What's your final grade?"
grade= gets.chomp.to_i

if grade >= 60
	puts "You passed!"

else
	puts "Retake!"
end