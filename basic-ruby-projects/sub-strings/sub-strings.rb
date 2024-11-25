def sub_strings(sentence, dict)
  obj = {}

  dict.each do |key|
    sentence.downcase.split(' ').each do |word|
      if word.include?(key)
        if obj.key?(key)
          obj[key] += 1
        else
          obj[key] = 1
        end
      end
    end
  end
  obj
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts sub_strings "Howdy partner, sit down! How's it going?", dictionary
