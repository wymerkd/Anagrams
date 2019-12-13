class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word
    @second_word = second_word
    @is_it_anagram = ''
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
  puts @is_it_anagram
end
