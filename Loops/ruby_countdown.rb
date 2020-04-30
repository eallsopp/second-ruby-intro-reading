=begin
puts "Gimme a number!"
x = gets.chomp.to_i
 
while x >= 0
  puts x
  x = x - 1
end
puts "Done!"

#Refactored equation
puts "Gimme a number!"
x = gets.chomp.to_i
 
while x >= 0
  puts x
  x -= 1 #refactor!
end
puts "Done!"

puts "Put in a number!"
x = gets.chomp.to_i
until x < 0
  puts x
  x -= 1
end
puts "DONE!"

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end

x = gets.chomp.to_i
for i in 1..x do
  puts i
end
puts "Done!"

puts "Gimme a number!"
x = gets.chomp.to_i
=end 

x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end