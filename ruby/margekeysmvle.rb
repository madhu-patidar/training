#!/usr/bin/ruby
hash = {"10am - 2pm"=>"Sun - Sat", "5pm - 7pm"=>"Sun - Sat"}
puts hash.group_by{ |k,v| v }.each_with_object({}) { |(k,v), h| h[v.map(&:first).join(', ')] = k }

a = [1,2,3,4,5,6]
 hash.select{|d,v| puts v}