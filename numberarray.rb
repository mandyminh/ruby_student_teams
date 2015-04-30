puts "give me 2 numbers"

puts "larger number"
num1= gets.chomp.to_i

puts "smaller number"
num2= gets.chomp.to_i


if num1%num2==0

	puts "#{num1} is disvisable by #{num2}"

else
	puts "not disvisable"

end