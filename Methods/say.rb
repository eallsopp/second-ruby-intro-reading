=begin There commands show a lot a puts puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"
=end

#this method uses def and say, it is more refined and can access many words
def say(words = "hello")
  puts words + "."
end

say()
say("hey")
say("hi")
say("how are you")
say("I'm fine")

def food(fridge)
  puts "There is #{fridge} in the refrigerator."
end

food("beer")
food("pork shoulder")
food("yogurt")
food("carrots")


def shed(tools)
  puts "There is a #{tools} that you can use in the shed."
end
shed("shovel")
shed("wagon")
shed("bucket")

