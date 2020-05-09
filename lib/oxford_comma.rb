def oxford_comma(array)
  
  phrase = ""
  if array.size == 1 
    return array[0]
  elsif array.size == 2
    return array.join(" and ")
    
  elsif array.size >= 3 
    array.each_with_index do |str, index| 
      if index != array.size - 1
        str << ", "
        phrase = phrase + str
        puts index
        puts array.size
      else
        phrase = phrase + "and #{str}"
        puts phrase
      end
      return phrase
    end
  end
end
 oxford_comma(["fiddleheads","okra","kohlrabi"])