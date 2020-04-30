=begin
# Use .each to iterate over the Array, and print each value
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each {|number| puts number}

#2 Same as above but only print values greater than 5

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each do |number| 
  if number > 5
    puts number
  end
end

#3 Use the same array from #2 and use the select method to extract odd to a new array
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = array.select do |num|
  if num % 2 != 0
  end
end

#4 Append 11 into the original array, prepend the beginning with 0
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.push(11)
array.unshift(0)
puts array

#5 Get rid of 11, append a 3
array.delete(11)
array.push(3)
puts array

#6 Rid duplicates without removing a specific value
array.uniq

#7 MAjor difference between array and hash
#An array is a way of storing data at an index position in order, while a hash stores data
#with keys and values by a key

#8 Create a HAsh, with one key value pair in both syntax styles
hash = {key: "value"}
hash2 = {:key => "value"}

#9 
h = {a:1, b:2, c:3, d:4}
#get value of :b
puts h[:b]
#add pair {e:5}
h[:e] = 5
p h
#Remove all key value pairs with values less than 3.5
h.delete_if { |k, v| v < 3.5}
p h

#10 CAn hash values be arrays, can you have an array of hashes
#yes and yes
new_hash = {count: [1, 2, 3, 4, 5, 6]}
new_test_array = [{count: [1, 2, 3]}, {count2: 4, 5, 6}]

#11 Given the following data structures. 
#Write a program that copies the information from the array 
#into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

data = {email: {}, address: {}, phone: {}}
data1 = {email: {}, address: {}, phone: {}}
#extract each value in the array, into data, for both joea nd sally
data[:email] = contact_data[0][0]
data[:address] = contact_data[0][1]
data[:phone] = contact_data[0][2]
data1[:email] = contact_data[1][0]
data1[:address] = contact_data[1][1]
data1[:phone] = contact_data[1][2]
contacts["Joe Smith"] = data
contacts["Sally Johnson"] = data1
p contacts

#data above is actaully just the contact information, it could be written like:
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
p contacts

#12 How would you acccess Joe's email and SAlly's phone number
puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone is #{contacts["Sally Johnson"][:phone]}"

#13 USe te Array method delete_if, and string method start_with? to delete all words that start with s
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

#iterate over the array, to find the words in ' ' that begin with letter s
#and delete them if they begin with 's'

arr.delete_if.each {|word| word.start_with?('s')}

#then recreate the array and remove all words that start with s or w
p arr

arr.delete_if.each {|word| word.start_with?("s", 'w')}
p arr

#14 take the array and turn it into a new array that makes an array of single words, 
#use Array methods map, flatten and string method split

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
#at the ' ' need to create new strings
a.map! {|word| word.split}
#I want my program to add '' before and after the space
a.flatten!
p a

#15 What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!" ########this one
else
  puts "These hashes are not the same!"
end
=end
#16 In #11 we manually input contacts hash 1 by 1, now, loop over the contacts hash
#and populate hte associated data fromc contact_data
#hint: iterate over a new variable

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

data = [:email, :address, :phone]

contacts.each do |name, value|
  data.each do |sym| 
    value[sym] = contact_data.shift
  end
end
p contacts
#how to do it with multiple people in the contacts hash?

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
            
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

data = [:email, :address, :phone]

contact_data
contacts.each_with_index do |(name, value), idx|
  data.each do |sym| 
    value[sym] = contact_data[idx].shift
  end
end
p contacts

p "xyz".upcase

a = %w(a b c d e)
a.insert(3, 5, 6, 7)
p a