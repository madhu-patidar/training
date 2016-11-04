#!/usr/bin/ruby

words = %w[rats live on no evil star]
str = ""
words.each { |word| str += "#{word.reverse} " }
puts str
arr = [1, 2, 3, 4, 5, 6]
print arr.select { |a| a > 3 }     #=> [4, 5, 6]
print arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]
print arr.drop_while { |a| a < 4 } #=> [4, 5, 6]
puts arr                          #=> [1, 2, 3, 4, 5, 6]

