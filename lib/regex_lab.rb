def starts_with_a_vowel?(word)
  /^[aeiou]/i.match?(word)

end

def words_starting_with_un_and_ending_with_ing(text)
  words = text.split
  words.select { |word| /\Aun.*ing\z/.match?(word) }

end

def words_five_letters_long(text)
  words = text.split
  words.select { |word| word.length == 5 }

end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return false unless text[0] == text[0].upcase
  return false unless /[.?!]$/.match?(text)
  true

end

def valid_phone_number?(phone)
  digits = phone.gsub(/\D/, '')
  digits.length == 10
end
