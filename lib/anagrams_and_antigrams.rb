def anagrams_and_antigrams?(string1, string2)
  # case 1: simple anagrams or not
  anagrams?(string1, string2)
end

def sorted_chars_from_string(string)
  string.downcase.gsub(/\s/, '').chars.sort
end

def anagrams?(string1, string2)
  sorted_chars_from_string(string1) == sorted_chars_from_string(string2)
end

# def palindrome(string)
