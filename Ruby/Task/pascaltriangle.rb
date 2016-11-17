#!/usr/bin/ruby

puts "Enter the row size as you want"
row = 6
puts row

space = row-1
i = 0
j = 0
k = 0
while i < row

  while space > i
    print " "
    space = space - 1 
   end 
  
   while k < i
     if (k==0 || i==0)
        num = 1
        print num
        k = k+1
     else
        num = num*(i-k+1)/k
         k = k+1
        print  " #{num}"
     end 
   end
   puts " 1"
   i = i+1
   space = row
   k = 0
  
end
 

        