#1 name.rb
puts ">>Please type in your first name:"
name = gets.chomp

#3
10.times do
puts "Hello there #{name}, it is nice to meet you."
end

#4 
puts ">>What is your last name?"
last = gets.chomp
puts "Nice to meet you #{name} #{last}!  Quite the full name we have!"

#2 age.rb
puts ">>How old are you?"
input = gets.chomp.to_i
puts 'In 10 years you will be:'
puts input + 10
puts "In 20 years you will be:"
puts input + 20
puts "In 30 years you will be:"
puts input + 30
puts "In 40 years you will be:"
puts input + 40

#3 another name.rb (see above_)
#4 See above as well

#5 Look at the program below:
x = 0
3.times do
  x += 1
end
puts x


#and
y = 0
3.times do
  y += 1
  x = y#x is defined inside the scope here
end
puts x #x is called outside the scoppe, where the variable is not defined. Error!!