#!/usr/bin/ruby
array = [1,2,3,7,8,9,0,0]
ary = [1,2,3,4,5,6]

array.reverse_each{|a| print a += 10, " "}
