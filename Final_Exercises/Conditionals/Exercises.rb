=begin
#1 Write and if statement that prints the siun is so bright if some is visible
sun = ['visible', 'hidden'].sample
if sun == 'visible'
  puts "The sun is so bright!"
end

#2 Unpredictable Weather Part 2

sun = ['visible', 'hidden'].sample
unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

#3 Unpredictable Weather 3 
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

#4 True or False
boolean = [true, false].sample
boolean ? puts("I'm true!") : puts("I'm false!")
#this way of writing is the associated value of boolean as true, with the : as delimiter

#5 Truthy Number What will the code print and why?
number = 7
if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end #will always return 7 as favorite number, because if statements evaluate to true

#6 Stoplight Part 1
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green'
    puts "Go!"
  when "yellow"
    puts 'Slow Down!'
  else
    puts 'Stop!'
end

#7 Stoplight 2 Reevaluate this to an if statement
stoplight = ['green', 'yellow', 'red'].sample

  if stoplight == 'green'
    puts 'Go!'
  elsif stoplight == 'yellow'
    puts 'Slow Down!'
  else
    puts 'Stop!'
  end

#8 Sleep Alert
status = ['awake', 'tired'].sample

  alert = if status == 'awake'
    'Be Productive!'
  else
    'Go to sleep!'
  end
puts alert #this allows the return value to be the return of the new variable
#that is assigned to the if/else statement

#9 Cool numbers
number = rand(10)

if number == 5
  puts "5 is a cool number!"
elsif number != 5
  puts "Other numbers are cool too!"
end

#10 stoplight #3 refortmat the case statement into 3 lines
stoplight = ['green', 'yellow', 'red'].sample

case stoplight

when 'green'  then puts 'Go!'
when  'yellow'  then puts 'Slow Down!'
else puts 'Stop!'
end
=end

