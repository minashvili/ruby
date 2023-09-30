
def hungry?(time_of_day_in_hours)
  if (time_of_day_in_hours > 10)
    puts "Я голоден"
    true
  else (time_of_day_in_hours == 10)
    puts "Я не голоден"
    false
  end
end

def eat_an(what)
  puts "Я ем #{what}\n"
end

eat_an 'яблоко' if hungry?(14)
eat_an 'яблоко' if hungry?(10)






