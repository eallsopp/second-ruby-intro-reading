#1st test
a = 5

3.times do |n|
  a = 3
end
puts a

#a here is 3 since it is defined in the inner scope

#2
a = 5
3.times do |n|
  a = 3
  b = 5
end
puts a
#puts b
#here a variable is defined in the inner scope, but its also being called  by
#the outer scope with the puts statement, will return an error

#3 is this a block? yes, the statements do not follow a method invocation
arr = [1, 2, 3]
for i in arr do
  a = 5
end
puts a
