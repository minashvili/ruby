
# Конвертор рублей в доллары
# Напишите конвертер валют рубли-доллары: программу, которая спрашивает курс,
# потом спрашивает у пользователя, сколько у него рублей, а потом выдает результат в долларах.

def summator_number()
  hash_word = []
  puts "Скольсейчас стоит долар?"
  your_dolla = gets.to_f
  puts "Сколь у вас Рублей"
  your_rub = gets.to_f
  puts
  last_sum = your_rub / your_dolla
  puts "У вас #{last_sum}"
end

summator_number()

