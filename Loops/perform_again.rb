#perform_again.rb

loop do
  puts ">>Would you like to do that again?"
  input = gets.chomp
  if input != "y"
    break
  end
end

=begin
begin
puts ">>Do you want to do it all over again?"
answer = gets.chomp
end while answer == "Y"
=end The above is also a loop but not recommended.
