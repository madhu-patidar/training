#!/usr/bin/ruby

puts "Enter a string"
str = gets.chomp!
strary = str.each_char.to_a
i  = 0
j = strary.length-1
for i in 0...strary.length do
  if (strary[i] =~ /[0-9a-zA-Z]/ && strary[j] =~ /[0-9a-zA-Z]/) 
      temp = strary[i]
      strary[i] = strary[j]
      strary[j] = temp
      i = i+1
      j = j-1
      if i >= j
        break
      end
  elsif strary[i] =~ /[0-9a-zA-Z]/ 
      j = j-1
      if i >= j
        break
      end
  elsif strary[j] =~ /[0-9a-zA-Z]/
      i = i+1
      if i >= j
        break
      end
  else i = i+1
       j = j-1
       if i >= j
        break
       end
  end
end
p strary
