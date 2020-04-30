"powerball" =~ /b/ #returns => 5, as the b is in the 5th indexed position
/b/.match("powerball") #returns => #<Matchdata "b"> THIS IS A MATCHDATA OBJECT





#this =~ can check for matches!
def has_a_b?(string)
  if string =~ /b/
    puts "MATCH!"
  else
    puts "No Match here!"
  end
end
has_a_b?("basketball")
has_a_b?("baseball")
has_a_b?("hockey")
has_a_b?("golf")