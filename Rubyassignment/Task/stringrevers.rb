#!/usr/bin/ruby

puts "Enter a string"
str ="3$#6^%&FHFD651"
strary = str.each_char.to_a
i  = 0
j = strary.length-1

begin
  if (strary[i] =~ /[a-zA-Z0-9]/ && strary[j] =~ /[a-zA-Z0-9]/) 
    temp = strary[i]
    strary[i] = strary[j]
    strary[j] = temp
    j = j-1
    i = i+1 
  elsif strary[i] =~ /[0-9a-zA-Z]/ 
    j = j-1
      
  elsif strary[j] =~ /[0-9a-zA-Z]/ 
    i = i+1    
      
  else
    j = j-1
    i = i+1
  end
end while i <= j 

reversestring = ""

for i in 0..strary.length-1 do
  reversestring = reversestring + strary[i]
end

puts reversestring


