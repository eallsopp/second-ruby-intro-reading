=begin
#1 New Pet select 'fish and assign the return value to a variable named my_pet'
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}!"

#2 More Than One, select fish and lizard at the same time, assign them a return value my_pets and print to
#my_pets
pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#3 Free the lizard
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
puts "I have a pet #{my_pets[0]}!"

#4 USe the code and select dog, add it to my pets and return it
pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2..3]
my_pets.pop
my_pets << pets[1]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#5 What Color Are You?
colors = ['red', 'yellow', 'purple', 'green']

colors.each {|color| puts "I'm the color #{color}!"}
#6 Doubled
numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do 
  |number| number * 2
  end
p doubled_numbers

#7 Divisible by Three iterate over and return a new array that are the numbers divisible by three
numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select do |number|
  number % 3 == 0
end

p divisible_by_three

#8 Favorite Number Part 1
['Dave', 7, "Miranda", 3, "Jason", 11]
favorites = [['Dave', 7], ['Miranda', 3], ["Jason", 11]]

#9 Favorite Number Part 2, use flatten to flatten favorites and then call is flat_favorites and print using #p
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
flat_favorites = favorites.flatten
p flat_favorites
=end

#10 Are We The Same?
array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2