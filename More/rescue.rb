names = ['Erik', 'Emily', 'Drew', 14, 'Craig', 'Joanne']

names.each do |name|
  begin 
  puts "#{name}'s name has #{name.length} letters in it!"
  rescue
  puts "Something went horribly wrong!"
  end
end

#Inline exception for Rescue
zero = 8
puts "Before each call"
zero.each { |zebra| puts zebra} rescue puts "Can't do that!" 
puts "After each call"
#the rescue line prints because you can't call the each method on a single integer
#HOWEVER
#.each can be called on an array of a single integer, or of multiple integers
zero = [0], 8, 9
puts "Before each call"
zero.each { |zebra| puts zebra} rescue puts "Can't do that!" 
puts "After each call"
