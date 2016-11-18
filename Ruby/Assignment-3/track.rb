#!/usr/bin/ruby
subject = "Writing Fast Tests Against Enterprise Rails 60min
Overdoing it in Python 45min
Lua for the Masses 30min
Ruby Errors from Mismatched Gem Versions 45min
Common Ruby Errors 45min
Rails for Python Developers lightning
Communicating Over Distance 60min
Accounting-Driven Development 45min
Woah 30min
Sit Down and Write 30min
Pair Programming vs Noise 45min
Rails Magic 60min
Ruby on Rails: Why We Should Move On 60min
Clojure Ate Scala (on my project) 45min
Programming in the Boondocks of Seattle 30min
Ruby vs. Clojure for Back-End Development 30min
Ruby on Rails Legacy App Maintenance 60min
A World Without HackerNews 30min
User Interface CSS in Rails Apps 30min"
subject_array = subject.split("\n") 
subject_array.sort_by!{ |x| (x[/\d+/].to_i) }
subject_array.reverse!
times_array = subject_array.map {|x| x[/\d+/]}
len = times_array.length
for i in 0...len
  times_array[i] = times_array[i].to_i
  if times_array[i] == 0
    times_array[i] = 5
  end
end
times_array.sort!.reverse!
p times_array 
morning_time = Time.local(2016,11,16,9,00,00)
i = 0

puts "Track 1:"
begin
  puts "#{morning_time.strftime('%I:%M%p')} #{subject_array[i]}"
  morning_time = morning_time + times_array[i]*60
  i = i+1
  if i == len - 1
    i = 0  
  end

  if morning_time.strftime('%I:%M%p') == "12:00PM"
    puts "#{morning_time.strftime('%H:%M%p')} Lunch"
    morning_time = morning_time + times_array[i]*60
    break  
  end
end while true
begin
   morning_time = morning_time + times_array[i]*60

  if morning_time.strftime('%I:%M%') >= "04:00PM" && morning_time.strftime('%I:%M%') <= "05:00PM"
    puts "#{morning_time.strftime('%I:%M%p')} Networking Event"
    break  
  end
   puts "#{morning_time.strftime('%I:%M%P')} #{subject_array[i]}"
   i = i + 1
   if i == len - 1
    i = 0  
   end
end while true

morning_time = Time.local(2016,11,17,9,00,00)
puts "Track 2:"
 begin
  puts "#{morning_time.strftime('%I:%M%p')} #{subject_array[i]}"
  morning_time = morning_time + times_array[i]*60
  i = i+1
  if i == len - 1
    i = 0  
  end
  if morning_time.strftime('%H:%M%p') == "12:00PM"
    puts "#{morning_time.strftime('%H:%M%p')} Lunch"
    morning_time = morning_time + times_array[i]*60
    break  
  end
end while true
begin
   morning_time = morning_time + times_array[i]*60
  if morning_time.strftime('%I:%M%') >= "04:30PM" && morning_time.strftime('%I:%M%') <= "05:00PM"
    puts "#{morning_time.strftime('%I:%M%p')} Networking Event"
    break  
  end
   puts "#{morning_time.strftime('%I:%M%P')} #{subject_array[i]}"
   i = i + 1
   if i == len - 1
    i = 0  
   end
end while true
morning_time = Time.local(2016,11,18,9,00,00)


