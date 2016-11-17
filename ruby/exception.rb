#!/usr/bin/ruby

begin
   file = open("tring2.rb")
   if file
      puts "File opened successfully"
   end
rescue
      
end
print file, "==", STDIN, "\n"
puts "hello error"
puts Exception.class
puts RuntimeError.class
def a
  raise "boom"
end

def b
  a()
end

begin
  b()
rescue => detail
  print detail.backtrace.join("\n")
end