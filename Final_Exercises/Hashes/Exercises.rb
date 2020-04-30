
=begin
#1 First Car, create a hash that contains the data for variable car
car = {type: "sedan", color: 'blue', mileage: 80_000}

#2 Adding the Year
car = {
  type: 'sedan', 
  color: 'blue',
  mileage: 80_000
}
car[:year] = 2003
p car

#3 Broken Odometer delete the odometer reading from the car
car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000,
  year: 2003
}
car.delete(:mileage)
p car

#4 What Color? Using te code, select the value 'blue' from car and print with puts
car = {type: 'sedan',
  color: 'blue',
  year: 2003}
  
p car[:color] #just like an index value in an array

#5 Labeled Numbers iteratate using each and print each elements key=> value pairs
numbers = { high: 100, medium: 50, low: 10}
numbers.each {|key, value| puts "A #{key} number is #{value}."}

#6 Divided by Two use map ti iterate over numbers and return an array of values divided by 2
#assign the returned array half_numbers and print using #p
numbers = {high: 100, medium: 50, low: 10}
half_numbers = numbers.map {|key, value| value / 2}
p half_numbers

#7 Low, Medium, High? use hash select to iterate over numbers and return a hash containing only
#key-value pairs where the value is less than 25, assign the return variable low_numbers print using p
numbers = {high: 100, medium: 50, low: 10}
low_numbers = numbers.select {|k,v| v < 25}
p low_numbers
#8 Low or Nothing in the code, numbers isn't mutated, modify the code to use select! rather than select
numbers = {high: 100, medium: 50, low: 10}
low_numbers = numbers.select! {|k, v| v < 25}

p low_numbers
p numbers
=end
#9 Multipe Cars Create a nested hash using the following data
car = {type: 'sedan', color: "blue", year: 2003} 
truck = {type: 'pickup', color: 'red', year: 1998}
#What ls wanted was me to write it out
ls_nest = {car: {type: 'sedan', color: 'blue', year: 2003}, 
truck: {type: 'pickup', color: 'red', year: 1998}}

nest = {:car => car, :truck => truck}
p nest
p ls_nest

#10 rewrite car as a nested array with teh same key-value pairs
nested_car = {:car => car} #this is a nested hash knucklehead
p nested_car

#a nested array would look like
array_car = [[:type, 'sedan'], [:color, 'red'], [:year, 2003]]]