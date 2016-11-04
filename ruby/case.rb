!#/usr/bin/ruby
class A
private : def age(a)
  case a
  when 1..3
    puts "baby"
  when 4...7
    puts "litte child"
  when 7..12
    puts "Child"
  when 13..18
    puts "Youth"
  else puts "Adlut"
  end
  end
end
obj = A.new
  obj.age(7)