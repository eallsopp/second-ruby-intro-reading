def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

#The last line of a method invocation is always the one called unless there is an
#explicit return programmed into the method invocation

def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value

def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

#Chaining Methods
def add_three(n)
  n + 3
end

add_three(5)
add_three(5).times {puts 'this should print 8 times'} #the argument 5 is called to the n parameter
#added to three in the method and comes out as the integer 8, printing the string 8 times

p "hi there".length #this returns an integer
p "hi there".length.to_s #this returns a string "8"

add_three(5).times {puts "Will this work?"}

def add_three(n)
  puts n + 3
end
#add_three(5).times {puts "Will this work?"} #this prints an error because the return 
#value of puts is nil, and nil doesn't respond to the .times method call

#to make that work, we adjust code:
def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end

add_three(5).times {puts "How about now?"}
#A new variable is printed, separtely from returning the value of the method call,
#in this case under a variable inside the method scope called, new_value

#A multi-parameter method, and calling methods as arguments
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

p add(20, 45)
p subtract(80, 10)


def multiply(num1, num2)
  num1 * num2
end

p multiply(add(20, 45), subtract(80, 10)) #calling a method as argument)

p add(add(6, 4), subtract(9, multiply(multiply(3,3),3)))
