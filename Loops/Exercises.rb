#What's the each method do in the program?
=begin
x = [1, 2, 3, 4, 5]
x.each do |a| #each will pull the numbers in the array x
  a + 1
end

# Write a while loop tha takes input fr the user and stops when the user writes STOP

puts ">> Would you like to continue? Write STOP to end."
input = gets.chomp.upcase

while input != "STOP"
    puts ">> We can keep going or you can tell me to stop."
    input = gets.chomp.upcase
end

#Recursion is a conditional within a method, wrte until it counts down to zero
#we know tha tthe number needs to go to zero and its in a method

def countdown(number)
#recursion requires condtions for the argument, in this case, number
  if number <= 0 #this way we see it get to zero
    puts number
  else
     puts number #we have to see the countdown
     countdown(number - 1) #we know the number has to go down, in relation to itself
     #otherwise if the -1 is outside the argument, the number remains the same (infinite loop)
  end
end

countdown(10)
=end