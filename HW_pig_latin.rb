#Write a program that translates one word English word into Pig Latin.

# Because the rules for Pig Latin can vary, I'll be specific:

# If the given word starts with a consonant, move only that consonant to end and then add "ay" to the end (e.g.: coffee -> offeecay, blogger -> loggerbay)
# If the given word starts with a vowel, add "way" to the end of the word (e.g., office -> officeway)

puts "Give me a word:"
word = gets.chomp
pl_word =""

if word[0] == "a" || word[0] == "e" ||word[0] == "i" || word[0] == "o"|| word[0] == "u"
	pl_word = word + "way"


else
	pl_word = word[1..(word.length-1)] + word[0] + "ay"

end
 puts "Is it '#{pl_word}'?"