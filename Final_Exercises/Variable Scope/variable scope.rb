=begin
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

#4 What will the following code print
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a  #this will print Xy-zy since a string = is input into the 2nd index value when the meth def runs

#5 Whats the code print and why?
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a #nothign adjusts a, so Xyzzy should be the print out

#6 What's my Value? Part 6
a = 7

def my_value(b)
  b = a + a
end

my_value(a) #this will print an error since a is referenced outside and inside the method def
puts a

#7 What's My Value? Part 7
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end # a changes within the block definition, changing the value of a to 3

puts a

#8 What's My Value? #8 
array = [1, 2, 3]

array.each do |element|
  a = element #a isn't defined outside of the scope fo the block an error will occur
end

puts a
=end
#9 What is my Value Part 9
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a #code should print 7, because it is shadowing

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b #referencing a from the outside, which is not possible.
  end
end

my_value(array)
puts a