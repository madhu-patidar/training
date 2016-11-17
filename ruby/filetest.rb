#!/usr/bin/ruby
$LOAD_PATH << "."
a = File.new("case.text", "a+")


a = File.open("case.text", "a+")
if a
   content = a.sysread(20)
   puts content
else
   puts "Unable to open file!"

end
