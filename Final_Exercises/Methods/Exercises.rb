=begin
#1 Print me
def print_me
  puts "I am printing within the method!"
end

print_me

#2 Print me Part 2, write a method named print_me that returns 
#"I am printign the return value!" when using the code: puts print_me

def print_me
  "I am printing the return value!"
end
puts print_me

#3 Greeting Through Methods Part 1, write 2 methods, one that returns the string "Hello"
#and one the returns the string "World" and print both to combine them into a sentence
def salutation
  "Hello"
end

def planet
  "World"
end

puts "#{salutation} #{planet}" #a method call can become an interpolated string
#and this return is the last line executed

#4 Greeting through Methods
#Write a method named greet that invokes the following methods
def hello
  'Hello'
end
def world
  'World'
end

def greet(word, word2) #2 arguments
  (word) + ' ' + (word2)
end

puts greet(hello, world) #include 2 arguments

def hello
  'Hello'
end

def world
  'World'
end
def greet
  puts hello + ' ' + world
end

greet 

#5 Make and Model use the code to write a method called car that takes 2 arguments
#and prints a string containing the value of two arguments
def car(make, model)
  puts make + ' ' + model
end

car('Toyota', 'Corolla')

#6 Day or Night? write a method named time_of_day and prints a string if boolean is true
#and prints a different string if it returns boolean false
daylight = [true, false].sample

def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end
time_of_day(daylight)

#7 Naming Animals fix the code so it prints as expected
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

#8 Name not found WRite a method that accepts and argument but doesn't require it
#default to the string "Bob" if no argument is given. The methods return should be
#the value of the argument.

def assign_name(name = 'Bob')
  name
end
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

#9 Multiply the sum
#Write the below methods so each output is true

def add(num, num2)
  num + num2
end

def multiply(sum1, sum2)
  sum1 * sum2
end

puts add(2,2) == 4
puts add(5,4) == 9
puts multiply(add(2,2), add(5,4)) == 36
=end
#10 Random Sentence write the methods name, activity so it can return a random
#value from each, then write the method sentence to output values in each and returns
#t from the method

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))
