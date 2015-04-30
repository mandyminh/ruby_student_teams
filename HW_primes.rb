#Create a Ruby program that finds how many prime numbers are between 1 and a number given by the user.

require 'prime'

puts "Give me a number greater than 1:"
num = gets.chomp.to_i

x=2
count=0

while x<=num
	if Prime.prime?(x)
		count +=1
	end
  x+=1
end

puts "There are #{count} prime numbers between 1 and #{num}!"