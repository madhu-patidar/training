#!/usr/bin/ruby

def fun1
  i = 0
  while i < 3
    puts "fun1 at : #{Time.now}"
    
    i = i + 1
  end
end
  def fun2
      puts "fun2 at : #{Time.now}"
      puts Thread.current
      puts Thread.main
5
  end
  puts "Start thread at : #{Time.new}"
t2 = Thread.new{fun2()}
t1 = Thread.new{fun1()}
puts t2.value
t2.join
t1.join


puts "end thread at : #{Time.new}"
puts Thread.current
puts Thread.main