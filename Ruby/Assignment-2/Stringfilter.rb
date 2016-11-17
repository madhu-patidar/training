
#!/usr/bin/ruby
doctor_map = "One: William Hartnell
Two:Patrick Troughton
Three:: Jon Pertwee
Four: Tom Baker (longest run)
5: Peter Davison
six: Colin Baker
Seven:   Sylvester McCoy
Eight: Paul McGann
Nine:Christopher Eccleston *series reboot*
Ten: David Tennant <- personal fav
Eleven: Matthew Robert Smith - the current doctor "

 doctor_name = doctor_map.scan(/([A-Za-z0-9]+)[:]*+([\sA-Za-z0-9(\*\<\-)\s]+[\s])/)
 puts "enter row and column "
 print "row "
 row = gets.to_i
 print "column "
 column = gets.to_i
 name = doctor_name[row][column]
 name.delete!("\n")
 puts "assert_equal doctors[#{row}][#{column}] :  \"#{name}\"."        