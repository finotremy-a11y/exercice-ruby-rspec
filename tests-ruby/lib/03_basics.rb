def who_is_bigger(a, b, c)
  if [a, b, c].include?(nil)
    "nil detected"
  else
    biggest = [a, b, c].max
    if biggest == a
      "a is bigger"
    elsif biggest == b
      "b is bigger"
    else
      "c is bigger"
    end
  end
end


def reverse_upcase_noLTA(strings)
  strings.reverse.upcase.delete("LTA")
end


def array_42(array)
  array.include?(42)
end


def magic_array(array)
  array.flatten.sort.map { |n| n * 2 }.reject { |n| n % 3 == 0 }.uniq.sort
end

