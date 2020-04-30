=begin
#1 Repeat after Me, write a prgoram that asks the user to type soemthing in
#After which it displays what was entered.
puts ">>Type something you want to see again."
input = gets.chomp
puts input

#2 Your Age in Months, Write a program asking the user for age in years, 
#and the program converts it to months.
puts ">>What is your age in years?"
age = gets.chomp.to_i
puts "You are #{age * 12} months old!"

#3 Print Something (Part 1)
#Write a program tat asks the user if they want to print something, then print
#if the user answers "y", otherwise print nothing
puts ">>Would you like to print something?"
input = gets.chomp
if input == "y"
  puts "something"
end

#4 Print Something Part 2
#Modify the above program so it prints an error for non 'y' or 'n' answers then
#asks for you to try again, allow for Y and N

loop do
  puts ">>Would you like to print something? (Y/N)"
  input = gets.chomp
  if input.upcase == "Y"
    puts "Something."
    break
  end
  break if input.upcase == "N" 
  puts "That is an invalid response.  Please try again. (Y/N)"
end

#   break if %w(y n).include?(input) is the same as writing :
# break if input == "y" || input == "n"

#5 Launch School Printer Part 1
#Write a program tha tprints "LS is the best!" at least 3 times, and the number
#of inputs equals the user's input, use .to_i to convert the value of input to integer

loop do
  puts ">>How many lines do you want to print?"
  lines = gets.chomp.to_i
  unless lines >= 3
    puts "That isn't enough lines.  Put in more."
    next
  end
  lines.times {puts "Launch School is the best!"}
  break
end

#6 Passwords
#Write a program that displays a welcome message, only after the user enters a 
#correct password.  Where the string is defined as a constant in your program.
#Keep asking until the user enters the correct password.
PASSWORD = "Thank you."

loop do
  puts ">> Please enter your password."
  password = gets.chomp
  if password != PASSWORD
    puts "Invalid password. Try again."
  
  elsif password == PASSWORD
    break
  end
end
puts "Correct Password."

#7 User Name and Password
#modify the program so it requires a username and password, if 1 is wrong, yield and error
#message.
#Don't tell the user which is incorrect.
USERNAME = "Erik"
PASSWORD = "spectacle"

loop do
  puts ">>Please enter your username."
  username = gets.chomp
  puts ">>Please enter your password."
  password = gets.chomp
  
  unless username == USERNAME && password == PASSWORD
    puts "Invalid username or password. Please try again."
  end
  break
end
puts "Thank you for your input. Welcome to the site."

#8 Dividing Numbers write a prog that contains 2 integers, and results in dividing
#the first by the second, the second number cannot be 0 and both must be
#validated using the method provided.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil

loop do 
  puts ">>Please enter a numerator."
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input.  Only integers are allowed."
  end

denominator = nil  
  loop do  
  puts ">>Please enter a denominator.  Denominators cannot equal 0."
  denominator = gets.chomp

  if denominator == '0'
      puts "Invalid input.  Only integers allowed and denominators cannot be zero."
  else
  break if valid_number?(denominator)
  puts "Invalid input.  Only integers are allowed."
  end
end
equation = numerator.to_i / denominator.to_i
puts "The #{numerator} divided by the #{denominator} is #{equation}"

#9 Printer Part 2 Redo the printer equation where Launch sChool is the best
#but after each iteration, you ask the suer again to write the input again, and 
#they can quit with q


number_of_lines = nil
input_string = nil
loop do
  loop do
    puts ">> How many output lines do you want/ Enter a number >= 3."
    input_string = gets.chomp
    break if input_string == 'q'
    
    number_of_lines = input_string.to_i
    break if number_of_lines >= 3
    puts "That's not enough lines."
  end
  break if input_string == 'q'
  
  while number_of_lines > 0
    puts "Launch school is the best!"
    number_of_lines -= 1
  end
end
=end

#10 Opposites attract Take positive and negative numbers from a user where 1 has
#to be psoitive and one has to be negative, order doesn't matter. But only
#notify the user if their input is invalid after both numbers have been input

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts "Please give me a numerator, a negative or positive integer."
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts "Invalid input, only non-zero integers are allowed"
  end
end

first_number = nil
second_number = nil
  
loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts "Invalid Input.  Please put in one positive and one negative integer."
  puts "Please start over."
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
  
