
aFile = File.new("input6.txt", "r+")
if aFile
   aFile.syswrite("ABCDE").class
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end
