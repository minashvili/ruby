
%w(paris rome london).each { |x| require_relative x }

class List_city
  include Paris, Rome, London

  def list_all_city
    return visit_paris.keys, visit_paris.values, '', visit_rome.keys, visit_rome.values, '', visit_london.keys, visit_london.values
  end
end

test = List_city.new
puts test.list_all_city














