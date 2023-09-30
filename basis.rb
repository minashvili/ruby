#Над этой задачей нужно будет немного потрудиться, но не спешите.
# Напишите игру "камень - ножницы - бумага". Пользователь вводит свой вариант в консоли и играет
# против компьютера. И видит результат игры. Компьютер должен выбирать случайный вариант.


list1 = [0, 1, 2]
machine_choice1 = list1.sample.to_i

def game_validate(machine_choice, your_choice)
    if machine_choice == your_choice
       puts "Ничья переброс"
    elsif (machine_choice == 0 && your_choice == 2) ||
          (machine_choice == 1 && your_choice == 0) ||
          (machine_choice == 2 && your_choice == 1)
       puts "Машина проиграла"
    else
       puts "Машина одержала вверх"
    end
end

puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"

your_choice1 = gets.to_i
game_validate(machine_choice1, your_choice1)

