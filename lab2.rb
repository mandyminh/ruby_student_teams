lab2.rb
# Lab Two: Ruby Review

# Ruby Says...
puts "Ruby says something. With a link break."
print "There will be no line break. Bummer."

puts ""

# Tell Ruby A Secret...
puts "Tell Ruby...your favorite color:"
fave_color = gets.chomp

# gets.chomp comes to us as a string,
# so if we want data as a different data type
puts "Tell Ruby...your favorite number:"
fave_whole_number = gets.chomp.to_i
fave_any_number = gets.chomp.to_f

# if, then statements
if fave_whole_number > fave_any_number
	# THEN...
	print "\a"
else
	# THEN something else...
	print "\a"
	print "\a"
end

# if AND if, then...
if fave_whole_number > fave_any_number && fave_color == "black"
	# THEN...
	puts "True!"
else
	# else THEN...
	puts "False!"
end

# if OR if, then...
if fave_whole_number > fave_any_number || fave_color == "black"
	# THEN...
	puts "True!"
else
	# else THEN...
	puts "False!"
end

# if, else if, then statements
if fave_whole_number > fave_any_number
	# THEN...
	puts "Yes, #{fave_whole_number} is larger."
elsif fave_any_number > 100
	# THEN...
	puts "Wow, that's a big number."
end

# # Loops:
# # .times
4.times do
	#this happens four times:
	puts "Something!"
end

until...
count = 1
variable2 = 10
until count > variable2
	#do this stuff:
	puts "This is loop #{count}"
	count += 1
end

# while...
count = 1
while count <= variable2
	#do this stuff:
	puts "This is loop #{count}"
	count += 1
end


# Arrays
array1 = []
array2 = Array.new

# # sample loop, at this point
# array is empty and this will do nothing
array1.each do |item|
	puts item
end

# # building an array:
finished_yet = false
while finished_yet != true
	puts "Give me a number, type 'done' when finished:"
	number = gets.chomp
	if number != "done"
		array1.push(number.to_i)
	else
		finished_yet = true
	end
end

# print out items in an array with comma between:
puts array1.join(', ')

# using .each loop
array1.each do |item|
	if item > 10 && item < 30
		puts item
	end
end


# Hashes
hash1 = {}
hash2 = Hash.new

# building a Hash...
key = ""
while key != "done"
	puts "Create a key (type 'done' if finished):"
	key = gets.chomp
	if key != "done"
		puts "Create a value:"
		value = gets.chomp
		hash1[key] = value
	end
end

# print out Hash contents with .each loop:
hash1.each do |key,value|
	puts "#{key}, #{value}"
end


# Methods
def say_hello
	puts "Hello"
end
# methods work to keep your code clean

# to make the method perform, call it:
say_hello


# Objects (classes)

class Flower

	def initialize(name, color, size)
		@name = name
		@color = color
		@size = size
	end

	def name
		@name
	end

	def color
		@color
	end

	def size
		@size
	end

end

new_flower = Flower.new("Rose","Red",4.25)

puts "This is a #{new_flower.color} #{new_flower.name}, it is #{new_flower.size} inches."




