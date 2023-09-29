# Непростая монетка
# Модифицируйте программу из предыдущей задачи так, чтобы иногда выпадало еще и "ребро"
# («Монета встала на ребро»). Причем ребро должно выпадать намного реже, чем орел или решка
# (вероятность 1/10 или меньше).

def randomo_bot()
  value_list = [0, 1, 2]
  return value_list.sample
end

def random_coun(randomo_bot_value, number_of_attempts = 2)
  if randomo_bot_value == 2 && number_of_attempts != 0
    number_of_attempts = number_of_attempts - 1
    random_coun(randomo_bot(), number_of_attempts)
  else
    case randomo_bot_value
    when 0
      puts "Выпал Орел"
    when 1
      puts "Выпала Решка"
    when 2
      puts "Супер ситуация выпало Ребро"
    end
  end
end


random_coun(randomo_bot)

















# def random_coun()
#   last_value = ''
#   value_list = [0, 1, 2]
#   god_of_random = value_list.sample
#   case god_of_random
#   when 0
#     last_value = 'Орел'
#   when 1
#     last_value = 'Решка'
#   when 2
#     last_value = 'Ребро'
#
#   end
#   puts "Выпало #{last_value}"
# end
#
# random_coun()





