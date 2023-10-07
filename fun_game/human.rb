# Создайте класс «Человек» с двумя свойствами: имя и отчество.
#   В этом классе напишите два метода: конструктор и метод, который будет возвращать полное имя человека.
#   Конструктор принимает имя и отчество и записывает их в нужные поля. Второй метод возвращает полное имя человека.
#   Напишите программу, которая использует этот класс: создайте трёх разных людей и выведите на экран их полные имена:

class Human
  attr_accessor :first_name, :second_name, :age

  def initialize(first_name, second_name, age)
    @first_name  = first_name
    @second_name = second_name
    @age         = age
  end

  def is_he_old(age)
    if age > 60
      puts "Пожилой человек"
    else
      puts "Не пожилой человек"
    end
  end

  def return_full_name(name = nil, name2 = nil)
    if name && name2
      return "#{name}, #{name2}"
    else
      return "#{@first_name}, #{@second_name}"
    end
  end

end

list_human = {
  :test1 => '59',
  :test2 => '20',
  :test3 => '60',
}

#
# list_human.each do |x, y|
#   x = Human.new(x, "супер#{x}", y)
#   puts x.return_full_name
#   puts x.is_he_old('6')
# end

test2 = Human.new("Георгий","Вольфрам",30)
puts test2.is_he_old(30)