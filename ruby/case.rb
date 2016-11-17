#!/usr/bin/ruby
data_hash = Hash.new
input = ""
fname = ""
lname = ""


while input=="y"|| input == ""
puts "enter first name :"
fname = gets.chomp
puts "enter last name :"
lname = gets.chomp
data_hash[fname] = lname;
puts "y or n"
input = gets.chomp

end
data_hash.each do |key, value|
    puts "sutudent name is" + key    + ' last name ' + value
end