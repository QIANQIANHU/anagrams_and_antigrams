def anagrams_and_antigrams?(string1, string2)

  if !word_contains_vowel?(string1, string2)
    "You need to input actual words!" # case 4: if word contains a vowel
  elsif anagrams?(string1, string2) & (palindrome?(string1, string2))
    "These words are palindrome."  # case 3: if words are anagrams or not
  elsif anagrams?(string1, string2)
     "These words are anagrams."  # case 1,2: if words are anagrams or not
  elsif antigrams?(string1, string2)
     "These words have no letter matches and are antigrams." # case 5: if words are antigrams or not
  end

end

def sorted_chars_from_string(string)
  string.downcase.gsub(/\s/, '').chars.sort
end

def anagrams?(string1, string2)
  sorted_chars_from_string(string1) == sorted_chars_from_string(string2)
end

def palindrome?(string1, string2)
  (string1.reverse == string1) & (string2.reverse == string2)
end

def word_contains_vowel?(string1, string2)
  processed_string1 = sorted_chars_from_string(string1)
  processed_string2 = sorted_chars_from_string(string2)
  (processed_string1.include?("a") | processed_string1.include?("e") | processed_string1.include?("i") | processed_string1.include?("o") | processed_string1.include?("u") ) &
  (processed_string2.include?("a") | processed_string2.include?("e") | processed_string2.include?("i") | processed_string2.include?("o") |
  processed_string2.include?("u") )
end

def antigrams?(string1, string2)
  string1_array = string1.downcase.split("")
  string2_array = string2.downcase.split("")
  string1_array.each do |letter|
    if string2_array.include?(letter)
      return false
    end
  end
  string2_array.each do |letter|
    if string1_array.include?(letter)
      return false
    end
  end
  return true
end
