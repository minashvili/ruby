
# Написать метод, который возвращает массив, состоящий из первых N элементов другого массива,
# который передан в метод в качестве параметра.
# Исходный массив может состоять из чисел и быть объявлен в коде программы. Число N запрашивается у пользователя.

class Cutsuper
  attr_accessor  :all_number, :users_rang

  def initialize()
    @all_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
  end

  def users_wants()
    puts "Вот какая палка колбасы у нас есть: #{@all_number}"
    puts "Сколько первых элементов вам отрезать?"
    user_ansver = gets.to_i
    new_list = []
    @users_rang = 0..user_ansver - 1
    @users_rang.each { |x| new_list.push(@all_number[x]) }
    puts new_list.to_s
  end

end

first_objackt = Cutsuper.new

first_objackt.users_wants
first_objackt.users_wants


