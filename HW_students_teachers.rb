# "Students & Teachers" - write a program that has two arrays, one of student names and one of teacher names.

# Ask the user for their name, and greet them according to their role:
students = ["Alec", "Ben", "Cas", "Dan"]
teachers = ["Joe", "Dennis", "Matt", "Hanna"]

puts "What's your name?"
name = gets.chomp.downcase.capitalize

if students.include? name
	 puts "Do your homework. #{name}!"

 elsif teachers.include? name
 	 puts "Time to teach, #{name}!"
 else 
 	 puts "You don't belong here!"
 
 end

 	