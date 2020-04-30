#1 Check for the letter sequece 'lab' in the following words. IF it exists, print the words
=begin
def letters(word)
  if word =~ /lab/
    puts word
  else
    puts "There is no 'lab' in the word, #{word}"
  end
end

letters("laboratory")
letters("experiment")
letters("Pans Labyrinth")
letters("elaborate")
letters("polar bear")

#2 the .call ethod isn't instituted to call the block
def execute(&block)
  block
end

execute {puts "Hello from inside the execute method!"}

#3 exception handling allows for an error in code to be executed and continue without 
#disrrupting the flow of code, and avoids exiting the program entirely
=end
#4 
def execute(&block)
  block.call
end

execute {puts "Hello from inside the execute method"}


#5 Errors
=begin
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
=end
#Why does the code above give the following error
#block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
#from test.rb:5:in `<main>'

#The program is trying to call a block and there is not call in the argument, need a &