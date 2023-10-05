# Создайте класс «Человек» с двумя свойствами: имя и отчество.
#   В этом классе напишите два метода: конструктор и метод, который будет возвращать полное имя человека.
#   Конструктор принимает имя и отчество и записывает их в нужные поля. Второй метод возвращает полное имя человека.
#   Напишите программу, которая использует этот класс: создайте трёх разных людей и выведите на экран их полные имена:

class Human
  attr_accessor :first_name, :second_name

  def initialize(first_name, second_name)
    @first_name = first_name
    @second_name = second_name
  end

  def return_full_name(name = nil, name2 = nil)
    if name && name2
      return "#{name}, #{name2}"
    else
      return "#{@first_name}, #{@second_name}"
    end
  end

end

list_human = %w(test1 test2 test3)

list_human.each do |x|
  x = Human.new(x, "супер#{x.reverse.slice(0)}")
  puts x.return_full_name
end
