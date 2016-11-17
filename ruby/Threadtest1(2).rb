
#!/usr/bin/ruby
h = {1=>"one", 2 => "two", 3 => "three"}
h2 = Hash[4 =>"four", 5 => "five"]
h2.store(6,"six")
puts h2.values_at(6,5)
 h.indices(9)
