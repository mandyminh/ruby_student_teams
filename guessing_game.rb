# number = 7

# puts "Give me a number 1 through 10"
# guess = gets.chomp.to_i

# if guess==number
# 	puts "Correct"
# else
# 	puts "Wrong"
# end

number= 43
 puts "Give me a number 1 through 100"
guess = gets.chomp.to_i

if guess==number
	puts "wow you're good"
elsif guess > (number-5) && guess <(number+5)
	puts "So close"
		
		else
			puts "Try agian"
		end