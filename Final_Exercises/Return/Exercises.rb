=begin
#1 BLD 1
#What will the code print
def meal
  return 'Breakfast'
end

puts meal
#it will print Breakfast, since the return is the last line executed in a method call

#2 BLD what will code print and why
def meal
  'Evening'
end
puts meal #will print Evening, for the same reason as above, last line of the method
#call is returned, which is Evening

#3 BLD What will eb returned and why?
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
#It will return Breakfast, since it is returned.  The string Dinner will not be seen

#4 BLD 4
#What will the code print and why?
def meal
  puts 'Dinner'
  return 'Breakfast'
end
puts meal
#IT will put both dinner and breakfast, since both lines are invoked.  
#puts statement prints the dinner call, but the return value is breakfast

#5 BLD 5
#What will it print and why?
def meal
  'Dinner'
  puts 'Dinner'
end
p meal
#Dinner will print one time, and the return value is nil since puts was used.
#two values print, because puts is in the method call, ad p will make the return value
#nil visible in the output

#BLD 6
#What will this print and why?
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end
puts meal
#will print and return Breakfast, since return value is indicated, and puts on 55
#will print it

#7 Counting Sheep 1
#What will the code print and why?
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep
#0 through 5 will print, because 0-4 are the 5 times call and in a block after
#iterating, the block returns the initial integer

#8 Counting Sheep Part 2, what will it print and why?
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
#i think it will print 0,1,2,3,4,10, since it is the last value in the method call,
#10 takes place of the integer in the .times call 5

#9 Counting sheep 3, what will it print and why?
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep #will print 0,1,2 since return si given if sheep>= 2
#the two shows up since the puts call is before the sheep >= 2 line of code
#the return value is nil, nil shows up since the p value in line 93 is 
#invoked
=end
#10 Tricky Number
#What will the code print and why?
def tricky_number
  if true
    number = 1
  else 2
  end
end
puts tricky_number
#if statements always evaluate true, so 1, no return value will be printed
#but the return value is nil since puts was used

