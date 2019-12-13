class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word
    @second_word = second_word
    @is_it_anagram = ''
    @is_it_word = ''
    @vowels = ["a", "e", "i", "o", "u", "y"]
  end

  def anagram_check
    @first_word = @first_word.downcase().split('').sort()
    @second_word = @second_word.downcase().split('').sort()
    if @first_word == @second_word
      @is_it_anagram = "These words are anagrams."
    else
      @is_it_anagram = "These words are not anagrams."
    end
  end

  def word_check
    split_first_word = @first_word.split('')
    split_second_word = @second_word.split('')
    split_first_word.each do |vowel|
      if (@vowels.include?(vowel))
        split_second_word.each do |vowel|
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
end
