=begin
#1 Given a hash of family members with keys as titles and arrays as values,
#use Rubys built in select method to gather only immedaite family members' names into
#a new array.
family = { uncles: ["bob", "joe", "steve"], 
          sisters: ["jane", "jill", "beth"],
          brothers: ["frank", "rob", "david"],
          aunts: ["mary", "sally", "susan"]
}
#Keys are the names, arrays are the values
immediate_family = family.select do |key|
  key == :sisters || key == :brothers || key == :parents #parents doesn't exist so it doesn't return a value
end

arr = immediate_family.values.flatten #w/o flatten, it returns a 2 dimensional array

p arr
          
#2 Look at Ruby's Merge Method. 2 versions merge and merge!
#What is the difference between the two?merge returns a new hash, merge! mutates the hash

hash = {fruit: "banana", vegetable: "carrot", drink: "milk"}
hasher = {fruit: "orange", vegetable: "carrot", drink: "IPA"}

p hash[:fruit]

new_hash = hash.merge(hasher)
p new_hash
p hash

newer_hash = hash.merge!(hasher)
p newer_hash
p hash

newest_hash = hasher.merge!(hash) {|k, v1, v2| v1}
p newest_hash

#3 Using Hash methods, write a program that loops through a hash and prints all of the
#keys, Then writes a program for the same, except the values. Then write a program
#that prints both
house = {garage: "cars", living: "sofa", bedroom: "bed"}

house_keys = house.each_key {|keys| p keys}
house.each_value {|values| p values}
house.each {|keys, values| p "In the #{keys} resides my #{values}"}

#4 Given the expression, how would you access the name of the person?
person = {name: "Bpb", occupation: "web developer", hobbies: "painting"}
p person[:name]

#5 What method could you use to find out if a Hash has a specific value in it?
#Wrte a program to demonstrate the use.
#I would use the method has_value?
person = {name: "bob", occupation: "chef", hobbies: "chopping"}
p person.has_value?("chef")

if person.has_value?("chef")
  puts "Bob must make delicious food!"
else 
  puts "Bob eats a lot of cereal."
end

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
#What's the difference between the two hashes that were created?
#my_hash is a has with the key symbol x and the value string "some value"
#my_hash2 gives x a return value of the string "some value", x is the string "hi there" as the key
=end

#7 NoMethodError: undefined method `keys' for Array
#If I see that error, what is most likely the problem?
#There is no method call named keys for Array objects

#8 Given the array...
words = ["demo", "none", "tied", "evil", "dome", "mode", "live", "fowl", 
        "veil", "wolf", "diet", "vile", "edit", "tide", "flow", "neon"]
#Write a program that prints out groups of words that are anagrams.
#how would I do this? deconstrute the existing array, reassemble in order
#PEDAC
#Problem
#Program to print out words 
#Words share all of the same letters
#I can deconstrute the array, into single string objects, sort it, join letters
#Reconstucte the arrays with the same letters
finish = {}
words.each do |word|
  key = word.split('').sort.join #this sorts words alphabetically based on a key of the first word searched
  if finish.has_key?(key)
    finish[key].push(word) #this word, is the value of the key, the first alphabetical word
  else
    finish[key] = [word]
end
end
finish.each_value do |v|
  puts "--------"
  p v
end

=begin
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end
=end