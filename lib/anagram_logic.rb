class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize(first_word, second_word)
    @first_word = first_word
    @second_word = second_word
  end

  def lowercase_words(first_word, second_word)
    @lower_first_word = @first_word.downcase()
    @lower_second_word = @second_word.downcase()
  end
