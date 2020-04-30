=begin
def greet(person)
  puts "Hello, " + person
end
greet("John")
greet (1)
#this will execute fine for the first greet("John")
#this will yield a stack trace error 'no implicit conversion of integer into string'
=end
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

#the SPLIT fucntion expects a string, so when it receives the integer 1 on line 23
#that's where it falls apart