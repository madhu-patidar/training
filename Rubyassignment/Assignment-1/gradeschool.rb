#!/usr/bin/ruby
$LOAD_PATH << "."
require "gradeschoolmodule"
class SchoolGrade
  include StudentRecord
 
  std = SchoolGrade.new
  
  begin
    puts 'Press "1" for add student name and grade'
    puts 'Press "2" for display all student Name and grade'
    puts 'Press "3" for display all student name and grade with sort order'
    puts 'Press "4" for find grade according Student\'s name'
    puts 'Press "5" for find name of student according Student\'s grade' 
    puts 'Press "6" for exit'
    a = gets.to_i
    case a
      when 1
        std.addstudent
      when 2
        std.display
      when 3
        std.displayinorder
      when 4
        std.displaygrade
      when 5
        std.getstudentname   
      when 6
        break 
      else
        puts "\nWrong choice! please try again...\n "
    end
  end while a <= 6 && a >= 0 
end
  
  



