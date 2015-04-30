# Create a program with a hash of countries & capitals 
# Ask the user for the capital of each country, and tell them if they are Correct or Wrong. Also, keep score and give their score at the end of the quiz.


cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}

score = 0

cos_n_caps.each do |country, capital|
	puts "What is the capital of #{country}?"
	answer = gets.chomp.downcase

	if answer == capital.downcase
		puts "CORRECT!"
		score +=1
	else
		puts "Wrong! It's #{capital}!"
	end
end

puts "You got #{score} correct!"
if score > (cos_n_caps.length/2)
	puts "Not bad!"
else 
	puts "Study more!"
end
