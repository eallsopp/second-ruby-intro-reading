#A proc is a block wrapped in an proc object and stored in a variable to pass around.
talk = Proc.new do 
  puts "I am talking."
end
talk.call

#also can take an argument, in this case "Bob"
talk = Proc.new do |name|
  puts "I am talking to #{name}."
end
talk.call "Bob"

#Procs can also be passed into a method
def take_proc(proc) #defining the method
  [1, 2, 3, 4, 5].each do |number| #here, EACH number in the array is being called 
    proc.call number #here the proc calls the number into its program
  end
end

proc = Proc.new do |number| #here, the variable proc is being defined
  puts "#{number}. Proc is being called in the method!" #here EACH number is called from take_proc above and being printed
end
take_proc(proc)
