# Напишите программу «Монетка»: она генерирует случайное число 0 или 1.
# И выводит на экран «Выпал орел» для нуля или «Выпала решка» для единицы.

def random_coun()
  value_list = [0, 1]
  god_of_random = value_list.sample
  if god_of_random > 0
    puts 'Выпала решка'
  else
    puts 'Выпал орел'
  end
end

random_coun()
