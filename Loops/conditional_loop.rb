#conditional loop, lets add conditions in the loop
x = 0
while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

#conditional while loop with next
x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end