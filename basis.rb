#Напишите программу, которая подсказывает, выходной сегодня или нет
# (для простоты мы не учитываем государственных праздников, итак много дней для безделья):

require 'date'

def functio_check

  now_date = Date.today
  if now_date.wday > 5
    puts 'Сегодня выходной', now_date.to_s
  else
    puts 'Сегодня еще не выходной', now_date.to_s
  end

end

functio_check()






