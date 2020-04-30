#countdown

puts ">>Enter your number:"
x = gets.chomp.to_i

while x > 1
  puts x
  x -= 1 #this is refeactored, rather than writing x = x-1
end

puts "Completed."


until x > 100
  x *= 2
puts x
end
puts "Doubled"

until x <= 0
  puts x -= 1
end
puts "Completed!"