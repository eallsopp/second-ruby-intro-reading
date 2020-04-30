=begin
#1 Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)

#2 What will the programs returns?  What is the value of arr after each?
 arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
#The program will reassign arr to 
#[["b", 1], ["b", 2] ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
#then the second line will call ["b", 1], and delete the 1, which is the last
#item in the first item of the array

 arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
#Return call [["b", [1, 2, 3], ["a", [1, 2, 3]]]]
   #Second line arr.first.delete(arr.first.last) calls 
   #[["b", [1, 2, 3]]], and deletes [1, 2, 3]
   #And return [1, 2, 3]
   


#3 How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
#arr[1][0]
#also arr.last.first

#4 What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5) # 3
arr.index[5] # nil, there is not 
arr[5] # 8

#5 What is the value of a, b, c in the following program?
string = "Welcome to America!"
string[6] #e
string[11] #A
string[19] #nil, does not exist


#6 You run the following code

names = ["bob", "joe", "susan", "margaret"]
names["margaret"] = "jody"
#and get an error message
#TypeError: no implicit conversion of String into Integer
 # from (irb):48:in `[]='
#  from (irb):48
#  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
#What is the problem and how can it be fixed?
#The string object "margaret" is acting as a call for an index position, 3
#It can be fixed by changing the names call to [3]

#7 Use each_with_index to iterate through an array of your creation
#that prints each index and value of the array
array = ["Jagged Alliance", "Final Fantasy", "Rock Climbing", "Cooking", "Web Design"]
array.each_with_index {|val, idx| puts "My hobbies vary.  In no paricular order they are #{idx + 1}. #{val}"}
=end
#8 Write a program that iterates over an array and builds a new array that is the result
#of incrementing each value in the original array by a value of 2.  You should have
#2 arrays at the end of the program.  The original array and the new array you've created.
#Print both to the screen using p.

array = [2, 3, 4, 5, 6, 7]

array2 = array.map {|value| value + 2}
p array
p array2
