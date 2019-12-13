class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word.downcase().split('').sort()
    @second_word = second_word.downcase().split('').sort()
    @is_it_anagram = ''
    @is_it_word = ''
    @is_it_antigram = ''
    @vowels = ["a", "e", "i", "o", "u", "y"]
  end

  def anagram_check
    if @first_word == @second_word
      @is_it_anagram = "These words are anagrams."
    else
      @is_it_anagram = "These words are not anagrams."
    end
  end

  def word_check
    @first_word.each do |vowel|
      if (@vowels.include?(vowel))
        @second_word.each do |vowel|
          if (@vowels.include?(vowel))
            @is_it_word = "These are real words."
          end
        end
      else
        @is_it_word = "You need to input actual words!"
      end
    end
    @is_it_word
  end

  def antigram_check
    @first_word.each do |letter|
      if (@second_word.include?(letter))
        @is_it_antigram = "These words have letter matches."
      else
        @is_it_antigram = "These words have no letter matches and are antigrams."
      end
    end
    @is_it_antigram
  end
end
