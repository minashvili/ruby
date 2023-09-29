
# Среднее арифметическое трех чисел
# Напишите программу, которая находит среднее арифметическое трех, введенных пользователем целых чисел.

def summator_number()
  hash_word = []
  (1..3).each { |x|
    puts "Введите число"
    hash_word << gets.to_i
  }
  puts "Среднее Арефметическое", hash_word.sum / hash_word.length
end

summator_number()



