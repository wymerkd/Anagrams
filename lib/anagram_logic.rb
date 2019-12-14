class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word.tr(' ~!@#$%^&*()_\+{}|:<>?[]\;,./-','').downcase().split('').sort()
    @second_word = second_word.tr(' ~!@#$%^&*()_\+{}|:<>?[]\;,./-','').downcase().split('').sort()
  end

  #Checks if both first_word and second_word arrays are equal to determine if anagram
  def anagram_check
    if @first_word == @second_word
      is_it_anagram = "These words are anagrams."
    else
      is_it_anagram = "These words are not anagrams."
    end
  end

  #Checks for common occurrences bewteen vowels array and user inputs
  def word_check
    vowels = ["a", "e", "i", "o", "u", "y"]
    first_vowel_check = vowels & @first_word #holds any values that are in both vowels and @first_word
    second_vowel_check = vowels & @second_word #holds any values that are in both vowels and @second_word
    if first_vowel_check.empty? === false && second_vowel_check.empty? === false #checks if first_vowel_check and second_vowel_check are holding any common vowels shared between vowels and first_word / vowels and second_word
      is_it_word = "These are real words."
    else
      is_it_word = "You need to input actual words!"
    end
  end

  #Checks for common occurrences between first_word and second_word
  def antigram_check
    antigrams = @first_word & @second_word #holds any values that are in both first_word and second_word
    if antigrams.empty? === false #checks if antigrams is holding any common occurrences between first_word and second_word
      is_it_antigram = "These words have letter matches."
    else
      is_it_antigram = "These words have no letter matches and are antigrams."
    end
  end
end
