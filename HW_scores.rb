# Create an array of test scores (anywhere from 0 to 100; sorry, no extra credit was given).

# Now I want a couple things:

# Print out the scores in ascending order.
# Find the average of those test scores and print it out.

scores = [80,78,90,95,69,53,89,87]
sum = 0

scores.each do |s|
	  sum += s
end

avg = sum/scores.length

puts "The test scores were:"

scores.sort.each_with_index do |score,index|
	  if index == (scores.length - 1)
	  puts scores

	  else 
	  print "#{scores}, "
	  end

end
puts ""
puts "The average for this test was: #{avg}"