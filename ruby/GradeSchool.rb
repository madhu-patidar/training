#!/usr/bin/ruby
$LOAD_PATH << "."
require "GradeSchoolModule"
class SchoolGrade
  include Student_record
 
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
        std.add_student
      when 2
        std.display
      when 3
        std.display_sort
      when 4
        std.display_grade
      when 5
        std.get_student_name
          
      when 6
        break 
      else
        puts "\nWrong choice! please try again...\n "
    end
  end while a <= 6 && a >= 0 
end
  
  



