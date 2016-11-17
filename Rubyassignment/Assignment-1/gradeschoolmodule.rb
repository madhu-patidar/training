#!/usr/bin/ruby
module StudentRecord
  @@studentgrade = Hash.new("not found student/gread")
  def addstudent
    begin
      puts "insert student name"
      name = gets.chomp.to_s
      if name =~ /[a-zA-Z]+/
        break
      else
        puts "please enter valid name"
      end
        

    
    end while true
    
    name = name.downcase
    begin
      puts "insert " + name + " grade 1/2/3/4/5"
      grade = gets.to_i
      if grade < 1 || grade > 5
        puts "please enter valid grade"
        
      else
       @@studentgrade[name] = grade #
       break
      end
    end while true
  end
  def display
    puts "\n"
    if @@studentgrade.empty?
      puts "No student record"
    else
      @@studentgrade.each {|key, value| puts "Student name is #{key} and grade  #{value}" }
      puts "\n\n"
    end
  end
  def displayinorder
    puts "\n"
    if @@studentgrade.empty?
      puts "No student record"
    else
      @@studentgrade.sort_by {|k, v| [v, k] }.each{|key, value| puts "Student name is #{key} and grade  #{value}" }
      puts "\n\n"
    end
  end
  def displaygrade
    if @@studentgrade.empty?
      puts "No student record"
    else
      puts "\nEnter Student name"

      stname = gets.chomp!
      sname = stname.downcase

     sname1 = @@studentgrade.select{ |key| key.casecmp(sname)==0 }
        puts "#{stname}'s grade is  #{@@studentgrade[sname]}"
      
    end
  end
  def getstudentname
    if @@studentgrade.empty?
      puts "No student record"
    else
      puts "Enter the grade"
      grd = gets.to_i
      studentname = @@studentgrade.select { |k,v|  v == grd }
      if studentname.empty?
        puts "#{grd} is not found"
     else 
      puts "Students names are whose grade #{grd}"
        puts studentname.keys       
      end
     
    end
  end
end
