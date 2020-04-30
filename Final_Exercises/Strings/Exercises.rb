=begin
#1 Create a String
string = String.new

#2 Quote Confusion 
#Modify the statement so double quotes are used instead of singles
puts 'It\'s now 12 o\'clock.'
puts "It's now 12 o'clock."
puts %Q(It's now "not" 12 o'clock.)

#3 Ignoring Case
name = 'Roger'

name1 = "RoGer"
name2 = "DAVE"

puts name.casecmp(name1) == 0
puts name.casecmp(name2) == 0

#4 Dynamic String, Modify so the value of name is printed within "Hello, !""
name = 'Elizabeth'
#puts "Hello, !"
puts "Hello #{name}!"

#5 Combining Names use the code to combine the names given, assign it full_name
first_name = "John"
last_name = "Doe"
full_name = first_name + " " + last_name
puts full_name

#6 Tricky Formatting
#using the code, capitalize state, then print the modified value state should be 
#modified both before and after you print it
state = 'tExAs'
state.upcase!
p state

#7 Goodbye not Hello, invoke a destructive method on greeting so that goodbye!
#is prited instead of Hello!
greeting = 'Hello!'
greeting.replace "Goodbye!"
p greeting

#8 Print the Alphabet split the alphabet into individual characters
alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')
alphabet.split(//).each {|letter| puts letter}

#9 PLuralize, use the Array#each method to print the plural in words
words = 'car human elephant airplane'
words.split(' ').each {|plural| puts plural + 's'}

#10 Are you there?
colors = 'blue pink yellow orange'
puts colors.include?('yellow')
puts colors.include?('purple')
=end