def echo(arg)
  return arg
end

def shout(arg)
  return arg.upcase
end

def repeat(arg, time=2)
  test = Array.new(time, arg).join(" ")
  return test
end

def start_of_word(arg, nbr)
  nbr = nbr -1
  return arg[0..nbr]
end

def first_word(arg)
  return arg.split.first
end

def titleize(arg)
  arg.capitalize!
  narg = arg.split
  except_words = ["the", "and"]
  narg.each do |word|
    if ! except_words.include? word
      word.capitalize!
    end
  end
  return narg.join(" ")
end
