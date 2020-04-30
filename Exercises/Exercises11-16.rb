=begin
#11 Given the following data structures, write a program that copies info from the
array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#I could reference the index of the array

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#12 using the hash created above, how would you access Joe's email and Sally's #
p "Joes email is #{contacts["Joe Smith"][:email]}"
p "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"


#13 Using Rubys Array method delete_if and String method start_with? delete
all the words that begin with s in the following array
Then recreate the arr and get rid of all of the words 
that start with "s" or starts with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?("s")}
p arr
arr << ("snow")
arr.push("slippery")
arr << ("salted roads")
p arr
arr.delete_if {|word| word.start_with?("s", "w")}
p arr

#14 Take this array
     and turn it into a new array that consists of strings containing
     one word i.e. ["white, "snow", "winter...]"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |pairs| pairs.split}
a = a.flatten
p a

#15 What will this program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
#order doesn't matter in hashes, they are the same
#16 Loop or iterate over the contacts hash to populate the contact_data array
may need to iterate over email, address, phone  and methods Array shift and first
first accesses first element, last does last and shift removes the first 

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash| #accesses key and value of the contact field
  fields.each do |field| #iterate through fields array
    hash[field] = contact_data.shift#shift removes and returns the element of the array repeatedly! so only once
   end
  end
p contacts
=end
#bonus
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com",
"404 Not Found Dr", "123-234-3456"]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx| #accesses key and value of the contact field, then its index
  fields.each do |field| #iterate through fields array
    hash[field] = contact_data[idx].shift #(references index to check)
   end
  end
p contacts
