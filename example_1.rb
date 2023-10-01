# Написать метод, который выводит на экран строку, состоящую из звездочек *.
# Длина строки (количество звездочек) должно быть параметром метода.
# Программа должна спросить у пользователя в консоли длину строки и вывести на экран
# нужную строчку используя этот метод.

  def preparation_output(sum)
    output_sum = []
    sum.times { |x| output_sum << "*" }
    return output_sum.join()
  end
# star_output(5)

  def finaly_output()
    puts "Сколько звезд зарядить?"
    users_sum = gets.to_i
    preparation_output(users_sum)

  end

puts "Залп! #{finaly_output()}"

