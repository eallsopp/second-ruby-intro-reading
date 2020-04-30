#1
=begin
Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 
and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each {|x| puts x}

#2 Same as above but only for values greater than 5
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each do |x|
  if x > 5 
    puts x
  end
end

#3 Now, using the same array from #2,
use the select method to extract all odd numbers into a new array.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.select do |x|
  if x % 2 == 1
    puts x
  end
end

#line 22 could also be if x % 2 != 0

#4 Append 11 to the end of the original array. Prepend 0 to the beginning.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.unshift(0)
array << (11)
puts array

#5 eliminate the 11, and add a 3
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.unshift(0)
array << (11)
puts array
array.pop
array.push(3)
puts array

#6 rid duplicates wthout removing one specific value
array.uniq


#7 Major differece between an array and a hash
An array is a sorted list of objects, while a hash has keys associated with objects

#8 Create a Hash, with one key-value pair, using both Ruby syntax styles.
new_hash = (file: => "folder")
hash.new = :fruit = 'banana"'
#my original answers is above, and aside from the {}, I had it backwards
hash = {:fruit => "banana"}
hash = {fruit: "banana"}

#9 a - get key :b value, add the pair {e:5}, remove all key:value < 3.5
h = {a:1, b:2, c:3, d:4}
h[:b] #this is the simple way to ge the value of b, known as element reference
h[:e] = 5 #simple way to add the [k:v] pair, known as element assignment

h.delete_if {|k, v| v < 3.5} 
puts h


#10 Can hash values be arrays? Can you have an array of hashes? (give examples)
Yes you can have values as an array.  This can catalogue a series of movies in :movies,
and refer to a certain film.
:movies = > ["The Matrix", "Crocadile Dundee", "The Boondock Saints"]
You can have an array of hashes
array = [{name: "Bob"}, {name: "Heather"}, {name: "Kyle"}]
=end