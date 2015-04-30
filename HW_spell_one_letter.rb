#Create a program that takes a name (or any word, really), and spells it out, one letter at a time.


puts "What's your name?"
name = gets.chomp

count1 = 0
# until count1 == name.length
# 	puts name[count1].upcase
while count1 < name.length
	puts name[count1].upcase
	
end
	count1 += 1



# Try to spell it out all in one line, separating the letters with a comma:

# count2 = 0
# until count2 == name.length
# 	if count2 < name.length - 1
# 		 print "#{name[count2].upcase}, "
# 	else 
# 		 puts name[count2].upcase
# 	end

# 	count2 += 1
# end

# puts "That spells #{name}"

