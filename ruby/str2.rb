#!/usr/bin/ruby

str = String.new("hallo")
str2 =  String.new("hallo")
str3 = str
puts str
puts str2
puts str << str2
puts str
puts str2
puts str == str2
puts str == str3
str4 = String.new("hi")
str5 =  String.new("hi")

puts str4 <=> str5

