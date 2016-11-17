#!/usr/bin/ruby

aFile = File.open("input4.txt", "w")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end