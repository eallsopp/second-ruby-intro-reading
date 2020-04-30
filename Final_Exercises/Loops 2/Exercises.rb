#1 Even or Odd?  Wreite a loop that prints numbers 1-5 and whether they're
#even or odd
=begin
count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
  puts "#{count} is even!"
  end
count += 1
break if count > 5
end

#2 Catch the Number Modify the code so the loop stops if number is between 0-10
loop do
  number = rand(100)
  puts number
  break if number <= 10 # I think this is ok, since we know the loop is 0-99
  #Launchschools answer is break if number.between?(0,10)
end

#3 Conditional Loop Using an if/else statement, run a loop tha tprints "this loop was
#processed!" one time if processs the loop is true, print it wasn't if loop is false
process_the_loop = [true, false].sample

if process_the_loop
  loop do 
    puts "This loop was processed!"
    break
  end
else
  puts "This loop was not processed!"
end

#4 Get the Sum ask the user, what's 2 + 2 equal? Use gets to retrieveModify the code
#so "That's Correct!" is printed and loop stops, when answer = 4, print 
#"wrong answer, try again!" if users answer doesn't equal 4
loop do
  puts ">>What does 2+2 equal?"
  answer = gets.chomp.to_i
  break if answer == 4
  puts "Wrong answer.  Try again!"
end
puts "That's correct!"

#5 Insert  modify code so user input gets added to numbers array, stop when it is 5 numbers
numbers = []

loop do
  puts "Enter any number:"
  input = gets.chomp.to_i
  numbers << input
  break if numbers.length == 5
end
puts numbers

#6 Empty the Array use loop to remove and print each name, stop the loop once nanes
#doesn't contain any more elements, use only loop, no while/until loops
names = ["Sally", "Joe", "Lisa", "Henry"]

loop do
  puts names.shift
  break if names.length == 0
end

#7 Stop Counting method counts 0 - 4, Modify the block so it printsthe current number
#and stops when the current number = 2
5.times do |index|
  puts index
  break if index == 2 
end

#8 Only Even, using Next modify the code so it prints only even numbers
number = 0

until number == 10
  number += 1
  if number.odd?
    next
  end
  puts number
end

#9 First to Five, increments either a or b by 1, loop is used t increments can
#be more than 1, break stops after 1 iteration, use next, so loop can modify code and
#iterate until a or b is 5, print "5 was reached!" before breaking out of loop

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
if number_a < 5 || number_b < 5
  next
end
  puts "5 was reached!"  
  break
end
#I realize my default is to go to the if statement, so thinkaout unless/while
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  unless number_a == 5 || number_b == 5
    next
  end
  puts "5 was reached!"
  break
end
#using while it is

number_a = 0
number_b = 0

loop do
  while number_a < 5 && number_b < 5 #this statement waits for both to be true
    number_a += rand(2)
    number_b += rand(2)
    next
  end
  puts "5 was reached!"
  puts number_a
  puts number_b
  break
end

#10 Given the conditions, use while loop to print "Hello!" twice!

def greeting(number_of_greetings)
  while number_of_greetings > 0
  puts "Hello!"
  number_of_greetings -= 1
  end
end

number_of_greetings = 2

greeting(number_of_greetings)
#This is my original answer, all within the method condition.
=end
def greeting
  puts "Hello!"
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
