def who_is_bigger(a, b, c)
  array = [a, b, c]
  if array.include? nil
    return "nil detected"
  else
    if a > b && a > c
      return "a is bigger"
    elsif b > a && b > c
      return "b is bigger"
    elsif c > a && c > b
      return "c is bigger"
    end
  end
end

def reverse_upcase_noLTA(string)
  reverse = string.reverse
  reverse = reverse.upcase
  reverse = reverse.delete("LTA")
  return reverse
end

def array_42(array)
  if array.include? 42
    return true
  else
    return false
  end
end

def magic_array(array)
  array = array.flatten.sort.map{|i| i*2}.reject{|i| i%3 == 0}.uniq.sort
  return array
end
