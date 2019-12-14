class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word.tr(' ~!@#$%^&*()_\+{}|:<>?[]\;,./-','').downcase().split('').sort()
    @second_word = second_word.tr(' ~!@#$%^&*()_\+{}|:<>?[]\;,./-','').downcase().split('').sort()
    @is_it_anagram = ''
    @is_it_word = ''
    @is_it_antigram = ''
    @vowels = ["a", "e", "i", "o", "u", "y"]
  end

#Checks if both first_word and second_word arrays are equal to determine if anagram
  def anagram_check
    if @first_word == @second_word
      @is_it_anagram = "These words are anagrams."
    else
      @is_it_anagram = "These words are not anagrams."
    end
  end

#Combines both first_word and vowels, then combines second_word and vowels. Checks for common occurrences.
  def word_check
    first_vowel_check = @vowels & @first_word
    second_vowel_check = @vowels & @second_word
    if first_vowel_check.empty? === false && second_vowel_check.empty? === false
      @is_it_word = "These are real words."
    else
    @is_it_word = "You need to input actual words!"
    end
  end

#Combines both first_word and second_word then looks for common occurrence.
  def antigram_check
    antigrams = @first_word & @second_word
    if antigrams.empty? === false
      @is_it_antigram = "These words have letter matches."
    else
      @is_it_antigram = "These words have no letter matches and are antigrams."
    end
  end
end
