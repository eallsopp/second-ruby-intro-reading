=begin
#1 Reading Error Messages
#you come across the following code, what errors does it raise for the given examples and what exacly do
#the error messages mean?def find_first_nonzero_among(numbers)
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
find_first_nonzero_among([1])

#The error message concerns the integer values, where 6 arguments are given in the 
#find_first_nonzero_among call to method, only one can be called, it needs to be an array,
#as does the second method call since .each is an Array #method, not an integer method

#2 Weather Forecast, method should output a emthod indicating whether a sunny r cloudy day lies
#ahead, the output is the same every time it is invoked.  Why?
#Fix the code so it behaves as expected.

def predict_weather
  sunshine = ['true', 'false'].sample
if sunshine
  puts "Today's weather will be sunny!"
else
  puts "Todays weather will be cloudy!"
  end
end

#the main problem with the above code is the if statement will always evaluate as true, since hte 
#statement in the sunshine variable are strings, not booleans. Strings will be evaluated as true,s ince strings are strings
#regardless of the word that makes up the string
def predict_weather
  sunshine = [true, false].sample
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Todays weather will be cloudy!"
  end
end
predict_weather

#3 Multiply By Five, when the user inputs 10 we expect "The result is 50! to print, but
#that is not the outcome.  Why is that?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i
puts "The result is #{multiply_by_five(number)}!"
#the local variable number is picking up a strong, since the gets call defaults to a string
#instead, the variable should be number = gets.chomp.to_i

#4 Pets Add a new pet to the list, dog named Bowser, but sparky and fido are removed,
#fix the code so all three dogs names will be associated with the key :dog in pets hash
pets = {cat: 'Fluffy', dog: ['sparky', 'fido'] fish: 'oscar'}
pets[:dog] = 'bowser'

p pets
#Above the cpde replaces the values fo :dog with the single new dog, bowser.
#To fix this:
pets = {cat: 'Fluffy', dog: ['sparky', 'fido'], fish: 'oscar'}
pets[:dog] << ('bowser')

p pets

#5 Even Numbers iterate through numbers and return a new array containing only even numbers
#Code is not producing expected output, why not! How can we change to produce the expected result
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end
p even_numbers
#The above code prints nil return cvalues because .map is destructing and we are asking
#to print those destroyed methods with .map, a method call .select would be a better choice,
#to iterate through and choose which ones fit the code block

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end
p even_numbers

#6 Confucius Says, what is the problem and hwo can you fix it? error says noimplicitconversionofnilintostring

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
#return values are evaluated to the last value fo the conditon, in this case the last one is
'Einstein', so that can return, so elsif in a single conditional statement, or return! @ each quote!

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  

  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  

  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

#7 Account Balance You are balancing your budget and it returns $70 however it should be $238, 
#What went wrong
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

#this block above takes the income from each month, and puts it as the variable balance.  
#It has to be changed to value the total income over the quarter, which is very simple.
#wE need to add a += in the final block to add the balance = calculate_balance(month)
puts balance

#8 Colorful Things (Find the error!)
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= (things.length || colors.length) #This is if we don't know the length fo the array

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

#9 Digit Product givena  a string of digits, our digit_product should return the product of all
#digits in the String argument.  Don't use reduce or inject methods, what's wrong witht he code
#how do you fix it
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 0 #local variable 0, will multply everything by 0

  digits.each do |digit|
    product *= digit
  end

  product #this is the last line in the method argument, which will be zero
end


p digit_product('12345')

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1 #change the inner scope variable

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
=end
#10 Warriors and Wizards
player = {strength: 10, dexterity: 10, charisma: 10, stamina: 10}

character_classes = { 
  warrior: {strength: 20},
  thief: {dexterity: 20},
  scout: {stamina: 20},
  mage: {charisma: 20}}

  puts 'Please type your class (warrior, thief, scout, mage):'
  input = gets.chomp.downcase.to_sym
  
  player.merge!(character_classes[input])
  puts 'Your character stats:'
  puts player