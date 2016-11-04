!#/usr/bin/ruby
 a = "Hello! "
 b = "i am amm string"
 c = "a"
 d = String.new("Ram")
 puts a, b

puts a<<d
puts a<<65
puts b =~ /\d/ #get index where first integer found
puts b[2] # get second index letter
puts b[2,7] # get string from second index to next 7 letters
puts b[2..7] #get string from second string to 7th string
puts b[2...7] #get string from second string to 6th index
puts b[-4,4] #get 4th last index of string to next 4 letters
puts b[4..-1] 
puts b.chop #delete last character if add ! with chop permanent delete last character

puts b
puts b.count(c)