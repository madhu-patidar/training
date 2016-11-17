#!/usr/bin/ruby

puts "enter name"
name = gets
puts name.each_byte { |f| f == /[0-9]/ }

