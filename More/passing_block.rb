def take_block(&block)
  block.call
end

take_block do 
  puts "Block is being called to the method!"
end

#here we pass the number into the take block method and using it in out block.call
def take_block(number, &block)
  block.call(number)
end

number = [43, 44, 45, 46]
take_block(number) do |num|
  puts "Block is being called in the method! #{num}"
end