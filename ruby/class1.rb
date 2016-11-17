#!/usr/bin/ruby

begin  
   
    raise 'An error has occurred.'  
    
rescue  
    puts 'I am rescued.'  
end  
  
begin  
  raise 'A test exception.'  
rescue 
  puts 'i handled'
end