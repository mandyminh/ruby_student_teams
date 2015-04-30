# Create a program that stores Usernames and Passwords in a Hash (you'll create the UNs & PWs).

# Have the user input a UN & PW, first make sure that the UN is in our collection, after which access will be granted if they inputed the matching PW, otherwise: ACCESS DENIED!

users = {"mandyminh"=>"1234","rongriff"=>"9999"}

puts "Please sign in"
puts "____"

print "Username:"
un = gets.chomp

print "Password:"
pw = gets.chomp

if users.include? un
	if users[un] == pw
		puts "Welcome, #{un}!"
	else
		puts "ACCESS DENIED!"
end

else
	puts "Not registered!"
end
