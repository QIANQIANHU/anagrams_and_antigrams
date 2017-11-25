def anagrams_and_antigrams?(string1, string2)

  if !word_contains_vowel?(string1, string2)
    "You need to input actual words!"# case 4: if word contains a vowel
  elsif anagrams?(string1, string2) & (palindrome?(string1, string2))
    "These words are palindrome."  # case 3: simple anagrams or not
  elsif anagrams?(string1, string2)
     "These words are anagrams."  # case 1,2: simple anagrams or not
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
  (sorted_chars_from_string(string1).include?("a") | sorted_chars_from_string(string1).include?("e") | sorted_chars_from_string(string1).include?("i") |
  sorted_chars_from_string(string1).include?("o") |
  sorted_chars_from_string(string1).include?("u") ) &
  (sorted_chars_from_string(string2).include?("a") |
  sorted_chars_from_string(string2).include?("e") | sorted_chars_from_string(string2).include?("i") |
  sorted_chars_from_string(string2).include?("o") |
  sorted_chars_from_string(string2).include?("u") )
end
