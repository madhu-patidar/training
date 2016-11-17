#!/usr/bin/ruby
row = 5
space = row
i = 1
j = 1
k = 0
count = 0
count1 = 0
while i <= row
  while space >= i
    space = space - 1
    print " "
  end
  k = i
  while k <= 2*i-1
    print k
    k = k + 1
  end
  l = i*2-1
  while l > i
    l = l - 1
    print l
    
  end

  puts
  i = i+1
  space = row
  k = 0
end 