def anagrams_and_antigrams?(string1, string2)
  # case 1: simple anagrams or not
  if anagrams?(string1, string2)
     "These words are anagrams."
  end
end

def sorted_chars_from_string(string)
  string.downcase.gsub(/\s/, '').chars.sort
end

def anagrams?(string1, string2)
  sorted_chars_from_string(string1) == sorted_chars_from_string(string2)
end

def palindrome?(string1, string2)
  if (string1.reverse == string1) & (string2.reverse == string2)
    "Both words are palindrome."
  end
end
