
# Конвертор валют с выбором валюты
# Модифицируйте конвертер валют из предыдущей задачи
# так, чтобы сначала он спрашивал у пользователя направление конвертации..

def calculate_cash(cash_cost, all_cash)
  return cash_cost / all_cash
end

def main_menu
    puts "Какая у вас на руках валюта?"
    puts "1. Рубли"
    puts "2. Доллары"
    puts "3. Выход"

    print "Пожалуйста, выберите валюту: "
    choice = gets.chomp.to_i  #chomp используется для удаления этого символа новой строки

    case choice
    when 1
      puts "Сколько сейчас стоит 1 доллар?"
      cash_cost1 = gets.chomp.to_i
      puts "Сколько у вас рублей?"
      all_cash1 = gets.chomp.to_i
      puts "Ваши запасы на сегодня равны: #{calculate_cash(all_cash1, cash_cost1)} долларов"
    when 2
      puts "Сколько сейчас стоит 1 рубль?"
      cash_cos1t = gets.chomp.to_i
      puts "Сколько у вас доларов?"
      all_cash1 = gets.chomp.to_i
      puts "Ваши запасы на сегодня равны: #{calculate_cash(all_cash1, cash_cost1)} рублей"
    when 3
      puts "До свидания!"
      exit
    else
      puts "Неправильный выбор. Пожалуйста, выберите снова."
      main_menu
    end
  end


main_menu()







