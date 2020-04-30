#1 
def greeting(name)
  puts "Hey there #{name}, I didn't think you lived here!"
end

greeting("Nick")
greeting("Ryan")
greeting("Sarah")

=begin
#2 Evaluate to
#1. x+2
=> x+2
#2 puts x = 2
=> nil, since puts returns nil
#3 p name - "Joe"
=> "Joe"
#4 four = "four"
=> "four"
#5 print something = "nothing"
=>nil
=end

#3 Write a program that includes a method multiply, takes 2 arguments and returns product

def multiply(a,b)
  print a*b
end

multiply 8,9

#4 What will this print to the screen?
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
#it wont print anything

#5 Edit the code to print words, what does it return?
def scream(words)
  words = words + "!!!!"
  puts words #returns nil because puts!
end

scream("Yippeee")

#6 It tells me on line 4, from the method on line 1 titled calculate_product
#It expects 2 aruments and only 1 is input


