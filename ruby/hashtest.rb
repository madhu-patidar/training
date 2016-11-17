#!/usr/bin/ruby 
def method_name
  "hello"
  nil
end
h = { "a" => 100, "b" => 200, "c" => 300 }
puts h.reject {|k,v| method_name}  #=> {"b" => 200, "c" => 300}
puts h.reject {|k,v| v > 100}  #=> {"a" => 100}