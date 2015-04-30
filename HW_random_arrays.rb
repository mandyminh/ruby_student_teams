# Adding from random arrays - write a program that takes two arrays of random numbers, 
#the length of which is decided by the user, and adds the corresponding items in each array 
#(i.e., the first number in the first array will be added to the first item in the second array). 


array_one = [1,2,3]
array_two = [4,5,6]
x = 0
array_three = []
while x < array_one.length
  array_three[x] = array_one[x] + array_two[x]
  x += 1
end

puts "Sum of corresponding item in each array is: #{array_three}"