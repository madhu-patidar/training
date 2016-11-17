#!/usr/bin/ruby
module Student_record
  $student_grade = Hash.new("not found student/gread")
  def add_student
    puts "insert student name"
    name = gets.to_s
    name.delete!("\n")
    begin
      puts "insert " + name + " grade 1/2/3/4/5"
      grade = gets.to_i
      if grade < 1 || grade > 5
        puts "please enter valid grade"
        
      else
       $student_grade[name] = grade #
       break
      end
    end while true
  end
  def display
    puts "\n"
    if $student_grade.empty?
      puts "No student record"
    else
      $student_grade.each {|key, value| puts "Student name is #{key} and grade  #{value}" }
      puts "\n\n"
    end
  end
  def display_sort
    puts "\n"
    if $student_grade.empty?
      puts "No student record"
    else
      $student_grade.sort_by {|k, v| [v, k] }.each{|key, value| puts "Student name is #{key} and grade  #{value}" }
      puts "\n\n"
    end
  end
  def display_grade
    if $student_grade.empty?
      puts "No student record"
    else
      puts "\n Enter Student name"
      sname = gets.delete!("\n")
      puts "#{sname}'s grade is  #{$student_grade[sname]}"
    end
  end
  def get_student_name
    if $student_grade.empty?
      puts "No student record"
    else
      puts "Enter the grade"
      grd = gets.to_i
      student_name = $student_grade.select { |k,v|  v == grd }
     puts student_name.keys    
    end
  end
end
