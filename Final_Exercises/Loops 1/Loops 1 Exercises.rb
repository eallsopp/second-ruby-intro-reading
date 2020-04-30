#1 
#2
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

#3 Control the Loop, print for 5 times instead of once

iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

#4 Modify so the loop stops when the user puts "yes"
loop do
  puts "Should I stop looping?"
  answer = gets.chomp
  break if answer == "yes"
  puts "Incorrect answer.  Please try again."
end

#5 Modify the code to Say Hello, have "hello" print 5 times
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  if count == 5 
    say_hello = false
  end
end

#6 Print While Using a while loop, print 5 numbers betweem 0 and 99
numbers = []
count = 0

while count < 5
  numbers << rand(100)
  count += 1
end
puts numbers

#7 Count Up, modify code to count from 1-10 rather than 10-1
count = 1

until count > 10
  puts count
  count += 1
end

#8 Print Until, use an until loop to print each number
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
puts numbers[count] #refers to index value, does not change the array
count += 1
end

#9 That's Odd, modify the code so it is not a 'for' loop, but outputs i if i is an odd number
for i in 1..100
  if i.odd?
  puts i
  end
end

#10 Greet your friends
friends = ['Sarah', 'John', 'Hannah', 'Dave']

#below is the for loop
for name in friends
  puts "Hello, #{name}!"
end

#below is the way to iterate over the array
friends.each do |name|
  puts "Hello, #{name}!"
end