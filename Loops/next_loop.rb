i = 0
loop do
  i += 2
  if i >= 3 && i < 7 #pass through 4 and 6, since both thaose conditiona re i >= 3 && i < 7
    next #next will only pass the iteration of the condition/conditions iteration
  end
  puts i
  if i == 10
    break
  end
end