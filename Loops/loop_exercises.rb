#1
=begin .each returns the value in array x = [1, 2, 3, 4, 5] 
=end the program then returns+ 1, [2, 3, 4, 5, 6]

#2
=begin
input = ""

while input != "STOP" do
  puts "Write the word STOP."
  input = gets.chomp
  puts "NO, write STOP."
  input = gets.chomp
end


x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
=end

#3 Countdown to zero using recursion
def countdown(x)
    if x <= 0 #so it refers to value of x as 0 first, to see if it is
      puts x
    else 
      puts x #print the number then do next line of code x-1 and then x becomes 0
      countdown(x-1) #recursive statement
    end
end
countdown(50)
