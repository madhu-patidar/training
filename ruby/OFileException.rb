#!/usr/bin/ruby
$LOAD_PATH << "."
 begin
   file = open("clas1.rb")
   if file
      puts "File opened successfully"
   end
rescue
   fname = "class1.rb"
   retry
end