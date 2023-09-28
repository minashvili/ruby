
def count_plays(year)
  s = get_shakey
  s["William Shakespeare"].select { |k, v| v["finished"] == year }.each { |key, val| puts val["title"] }.count
end


