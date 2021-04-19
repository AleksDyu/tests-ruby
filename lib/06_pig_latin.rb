def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  string_to_array = string.split(" ")
  translated = []
  string_to_array.each_with_index do |word, index|
    qu = false
    trad = ""
    if vowels.include? word[0]
      trad = word + "ay"
      translated.push(trad)
    else
      word = word.split("")
      count = 0
      word.each_with_index do |char, index2|
        if vowels.include? char
          if char == "u" and trad[-1] == "q"
            qu = true
            trad = string_to_array[index][count + 1..string_to_array[index].length] + trad + "uay"
            translated.push(trad)
            next
          end
          break
        else
          if char == "q" and word[index+1] == "u"
            qu = true
            trad = string_to_array[index][count + 2..string_to_array[index].length] + "quay"
            translated.push(trad)
            next
          else
            trad += char
          end
          count +=1
        end
      end
      if not qu
        trad = string_to_array[index][count..string_to_array[index].length] + trad + "ay"
        translated.push(trad)
      end
    end

  end
  return translated.join(" ")
end
